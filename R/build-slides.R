
rmarkdown::render(
    input = here::here("slides/introduction.Rmd"),
    output_file = "slides-introduction.html",
    output_dir = here::here("public/"),
    knit_root_dir = here::here("."),
    quiet = TRUE
)
