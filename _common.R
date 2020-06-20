
library(RefManageR)
library(NHANES)
library(knitr)
library(tidyverse)
# library(DiagrammeR)
library(htmltools)
# library(webshot)

knitr::opts_chunk$set(
    comment = "#>",
    collapse = TRUE,
    warning = FALSE,
    dpi = 72,
    fig.width = 6,
    fig.height = 6,
    fig.align = "center"
)

BibOptions(
    check.entries = FALSE,
    bib.style = "authoryear",
    cite.style = "authoryear",
    style = "markdown",
    super = TRUE
    # hyperlink = FALSE,
)

options(knitr.table.format = "html")

set.seed(12345)

insert_video <- function(video_file) {
    htmltools::tags$video(
        htmltools::tags$source(
            src = video_file,
            type = "video/mp4"
        ),
        controls = NA,
        width = "100%"
    )
}
