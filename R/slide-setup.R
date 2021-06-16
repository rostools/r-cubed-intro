
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
    # hyperlink = FALSE,
)
bib <- ReadBib(here::here("resources/refs.bib"), check = FALSE)
knitr::opts_chunk$set(echo = FALSE)

# Customized theme
library(xaringanthemer)
style_mono_accent(
    base_color = "#2a2e44",
    text_font_size = "26px",
    link_color = "#5e6799",
    header_font_google = google_font("Fira Sans"),
    text_font_google = google_font("Crimson Text"),
    code_font_google = google_font("Source Code Pro")
)

xaringanthemer::style_extra_css(
    list(
        "div.my-footer" = list(
            "background-color" = "#FFFFFF",
            position = "absolute",
            bottom = "0px",
            left = "0px",
            height = "50px",
            width = "100%"
        ),
        "div.my-footer span" = list(
            "font-size" = "12pt",
            position = "absolute",
            left = "15px",
            bottom = "8px"
        )
    )
)
