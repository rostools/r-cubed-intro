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
version_tag <- git_tag_create(
    name = repo_version,
    message = "Learning module updated based on JOSE reviews and accepted for publication."
)
git_push()
git_tag_push(repo_version)
tag_archive_file <- str_c("r-cubed-", repo_version, ".zip")
git_archive_zip(tag_archive_file)

zenodo <- ZenodoManager$new(
    # url = "https://sandbox.zenodo.org/api",
    url = "https://zenodo.org/api",
    logger = "INFO",
    token = askpass::askpass()
)

update_record <- zenodo$getDepositionById("4520016")
update_record <- zenodo$editRecord(update_record$id)
# pwalk(authors_df, update_record$addCreator)
update_record$addRelatedIdentifier("isCompiledBy", "https://gitlab.com/rostools/r-cubed")
# To remove old reference.
update_record$removeRelatedIdentifier(
    "isIdenticalTo",
    "https://gitlab.com/rostools/r-cubed/-/tags/v3.0"
)
update_record$addRelatedIdentifier(
    "isIdenticalTo",
    str_c("https://gitlab.com/rostools/r-cubed/-/tags/", repo_version)
)
update_record$setVersion(repo_version)
# To fix an occasional bug/mistake with zen4R
# update_record$metadata$related_identifiers[[1]]$scheme <- NULL
# update_record$metadata$related_identifiers[[1]]$relation <- "isNewVersionOf"
update_record$metadata
update_record

deposited_record <- zenodo$depositRecordVersion(update_record,
                                                files = tag_archive_file)
fs::file_delete(tag_archive_file)
