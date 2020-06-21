
# Create the course book
bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet = TRUE)

# To move the slides over
dir.create("public/slides/", showWarnings = FALSE)
dir.create("public/resources/", showWarnings = FALSE)

slide_files <- list.files("slides", pattern = ".*\\.html", full.names = TRUE)
slide_css <- list.files("resources", pattern = ".*\\.css", full.names = TRUE)
logo_files <- list.files("images", pattern = ".*logo.*", full.names = TRUE)
file.copy(slide_files, "public/slides")
file.copy(slide_css, "public/resources")
file.copy(logo_files, "public/images")
