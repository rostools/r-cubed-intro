
# Create the course book
bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet = TRUE)

# To move the slides over
dir.create("public/slides/", showWarnings = FALSE)
dir.create("public/resources/", showWarnings = FALSE)

slide_files <- list.files("slides", pattern = ".*\\.html", full.names = TRUE)
slide_css <- list.files("resources", pattern = ".*\\.css", full.names = TRUE)
logo_files <- list.files("images", pattern = ".*logo.*", full.names = TRUE)
slide_image_files <- list.files("images", pattern = ".*\\.png$", full.names = TRUE)
file.copy(slide_files, "public/slides", overwrite = TRUE)
file.copy(slide_css, "public/resources", overwrite = TRUE)
file.copy(c(logo_files, slide_image_files), "public/images", overwrite = TRUE)
