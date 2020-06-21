
library(tidyverse)
library(httr)
library(fs)

text_files <- dir_ls(path = c("slides", "."),
                     type = "file",
                     regexp = "[.](md|Rmd)$")

url_pattern <- "http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+"
url_links <- map(text_files, read_lines) %>%
    map(~str_extract_all(.x, url_pattern)) %>%
    unlist() %>%
    str_remove("[:,.\\]\\>\\)]+$") %>%
    str_remove("[:,.\\]\\>\\)]+$") %>%
    str_remove(".*img.*License.*\\)\\]\\(") %>%
    str_remove(".*\\.exe$") %>%
    unique() %>%
    na_if("") %>%
    na.omit()

# Check each URL one by one and determine whether it works
url_status <-
    tibble(category = NA_character_,
           reason = NA_character_,
           URL = NA_character_)[-1,]
for (url_link in url_links) {
    x <- httr::GET(url_link)
    url_status <- url_status %>%
        add_row(
            category = httr::http_status(x)$category,
            reason = httr::http_status(x)$reason,
            URL = url_link
        )
}
