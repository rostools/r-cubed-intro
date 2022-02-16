
#' Include a hidden, but clickable, section of details that is for instructors.
#'
#' @param .text Text to include in the details to instructors.
#'
#' @return a text surrounded by the HTML tag `details`.
#'
details_for_instructors <- function(.text) {
    glue::glue("

    <details style='margin-bottom: 1rem'><summary><strong><em>For instructors: Click for details.</em></strong></summary>
    <blockquote><p>
    {.text}
    </p></blockquote>
    </details>

    ")
}
