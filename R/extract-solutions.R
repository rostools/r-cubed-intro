
#' Extract the Exercise header title and the solution code chunk.
#'
#' This function is used to move the code into the solution appendix
#' of the website.
#'
#' @param rmd_file The R Markdown file to process.
#'
#' @return A character string.
#'
extract_solution_chunks <- function(rmd_file) {
    readLines(rmd_file) %>%
        commonmark::markdown_xml() %>%
        xml2::read_xml() %>%
        xml2::xml_find_all(
            "//*[@level = '3']/*[contains(text(), 'Exercise')] | //*[@level = '2']/*[contains(text(), 'Exercise')] | //*[@info[contains(., 'solution')]]"
        ) %>%
        xml2::xml_text() %>%
        purrr::map( ~ dplyr::if_else(
            stringr::str_detect(.x, "^Exercise: "),
            stringr::str_c("**", stringr::str_remove(.x, ' \\{.*\\}$'), "**"),
            stringr::str_c("\n```r\n", .x, "```\n\n")
        )) %>%
        stringr::str_split("\n") %>%
        unlist()
}
