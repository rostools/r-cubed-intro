# Convert slides from Rmd to HTML -----------------------------------------

library(magrittr)
fs::dir_ls("slides", glob = "*.Rmd") %>%
    purrr::map(rmarkdown::render, quiet = TRUE)
