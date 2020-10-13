
# Convert slides from Rmd to HTML -----------------------------------------

rmarkdown::render(
    input = here::here("slides/introduction.Rmd"),
    knit_root_dir = here::here("."),
    quiet = TRUE
)

rmarkdown::render(
    input = here::here("slides/open-data.Rmd"),
    knit_root_dir = here::here("."),
    quiet = TRUE
)

rmarkdown::render(
    input = here::here("slides/collaboration-teamwork.Rmd"),
    knit_root_dir = here::here("."),
    quiet = TRUE
)

rmarkdown::render(
    input = here::here("slides/open-reproducible-science-era.Rmd"),
    knit_root_dir = here::here("."),
    quiet = TRUE
)
