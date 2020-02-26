
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
