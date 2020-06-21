
options(htmltools.dir.version = FALSE)

# Insert references
library(RefManageR)
BibOptions(
    check.entries = FALSE,
    bib.style = "numeric",
    cite.style = "numeric",
    style = "markdown",
    max.names = 2
    # hyperlink = FALSE,
)
bib <- ReadBib(here::here("resources/refs.bib"), check = FALSE)
knitr::opts_chunk$set(echo = FALSE)

# Customized theme
library(xaringanthemer)
style_mono_accent(
    base_color = "#2a2e44",
    header_font_google = google_font("Fira Sans"),
    text_font_google = google_font("Crimson Text"),
    code_font_google = google_font("Source Code Pro"),
    outfile = here::here("resources/xaringan-themer.css")
)
