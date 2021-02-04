library(desc)
library(tidyverse)
library(zen4R)
library(gert)

authors_df <- desc_get_field("Authors@R") %>%
    str_remove_all('("|\\(|\\))') %>%
    str_replace_all(",", "\n") %>%
    str_split("person") %>%
    map(str_extract_all, pattern = "(given|family|affiliation|ORCID) = .*") %>%
    flatten() %>%
    map(as_tibble) %>%
    map_dfr(separate, col = "value", into = c("name", "value"), sep = " = ", .id = "id") %>%
    pivot_wider() %>%
    transmute(name = glue::glue("{family}, {given}"),
              affiliation = affiliation,
              orcid = ORCID)

# For new deposits. This was already done.
# lesson_title <- desc_get_field("Title") %>%
#     str_remove_all("\"") %>%
#     str_remove_all("\\n") %>%
#     str_replace_all(" +", " ") %>%
#     str_replace(":", " -")
#
# description_content <- desc_get_field("Description") %>%
#     str_remove_all("\\n") %>%
#     str_replace_all(" +", " ")

repo_version <- str_c("v", as.character(desc::desc_get_version()))
version_tag <- gert::git_tag_create(
    name = repo_version,
    message = "Learning module heavily updated based on feedback from previous workshops. Used as the base for the JOSE submission."
)
gert::git_archive_zip("r-cubed.zip")

zenodo <- ZenodoManager$new(
    url = "https://zenodo.org/api",
    logger = "INFO",
    token = Sys.getenv("ZENODO_TOKEN")
)

update_record <- zenodo$getDepositionByDOI("10.5281/zenodo.3921894")

pwalk(authors_df, update_record$addCreator)
update_record$setUploadType("other")
update_record$setLicense("cc-by")
update_record$addRelatedIdentifier("isCompiledBy", "https://gitlab.com/rostools/r-cubed")
update_record$addRelatedIdentifier("isIdenticalTo", "https://gitlab.com/rostools/r-cubed/-/tags/v3.0")

deposited_record <- zenodo$depositRecordVersion(new_record,
                                                delete_latest_files = TRUE,
                                                files = "r-cubed.zip",
                                                publish = FALSE)
zenodo$uploadFile("r-cubed-intermediate.zip", deposited_record$id)
