library(tidyverse)
library(httr)
library(rvest)
library(fs)

html_files <- dir_ls(path = "public",
                     glob = "*.html",
                     recurse = TRUE)
stop("To prevent accidental sourcing.")

# Test URL is active or alive ---------------------------------------------

# URLs change over time or get removed from the internet. This code
# runs gets all http(s) links and does a simple "GET" to see if it
# is active or not. It isn't always correct, but its a good starting
# point.

get_href_links <- function(x) {
    x %>%
        read_html() %>%
        html_nodes("a") %>%
        html_attr("href")
}

url_links <- map(html_files, get_href_links) %>%
    flatten_chr() %>%
    str_subset("^https?.*$") %>%
    str_subset(".*\\.(exe|zip)$", negate = TRUE) %>%
    str_remove("%3E") %>%
    unique()

bad_url <- function(x) {
    bad_url <- NA_character_
    if (http_error(x))
        bad_url <- x
    bad_url
}

url_tested <- map_chr(url_links, bad_url) %>%
    na.omit()

url_tested
