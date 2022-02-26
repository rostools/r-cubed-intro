# Convert slides from Rmd to HTML -----------------------------------------

# Need to do this for RefManageR to make citations properly
render_separate_env <- function(file) {
    callr::r(function(file) rmarkdown::render(file, quiet = TRUE),
             args = list(file = file))
}

fs::dir_ls(here::here("slides"), glob = "*.Rmd") |>
    purrr::walk(render_separate_env)
