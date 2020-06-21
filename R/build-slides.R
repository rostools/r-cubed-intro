
rmarkdown::render(
    input = here::here("slides/introduction.Rmd"),
    knit_root_dir = here::here("."),
    quiet = TRUE
)

rmarkdown::render(
    input = here::here("slides/open-data.Rmd"),
    # knit_root_dir = here::here("."),
    quiet = TRUE
)
