# install.packages("bibtex")
# Convert slides from Rmd to HTML -----------------------------------------

rmarkdown::render(
    input = here::here("slides/introduction.Rmd"),
    # knit_root_dir = here::here("."),
    quiet = TRUE
)

rmarkdown::render(
    input = here::here("slides/collaboration-teamwork.Rmd"),
    # Not use this because links to images need to translate to website
    # knit_root_dir = here::here("."),
    quiet = TRUE
)

rmarkdown::render(
    input = here::here("slides/open-reproducible-science-era.Rmd"),
    # Not use this because links to images need to translate to website
    # knit_root_dir = here::here("."),
    quiet = TRUE
)
