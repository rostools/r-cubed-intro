
# For setting up slides ---------------------------------------------------

options(htmltools.dir.version = FALSE)

# Insert references
library(RefManageR)
BibOptions(
    check.entries = FALSE,
    bib.style = "numeric",
    cite.style = "numeric",
    style = "markdown",
    max.names = 2
)
bib <- ReadBib(here::here("resources/refs.bib"), check = FALSE)
knitr::opts_chunk$set(echo = FALSE)

# Customized theme
library(xaringanthemer)
style_mono_accent(
    base_color = "#2a2e44",
    text_font_size = "1.1rem",
    link_color = "#5e6799",
    header_font_google = google_font("Prompt"),
    text_font_google = google_font("Overpass"),
    code_font_google = google_font("Source Code Pro")
)

progress_bar_colour <- "#2E442A"
