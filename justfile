@_default:
    just --list --unsorted

# Run all recipes
run-all: install-dependencies spell-check style build-site 

# Install package dependencies
install-dependencies:
  #!/usr/bin/Rscript
  pak::pak(ask = FALSE)

# Check spelling of Markdown files
spell-check: 
  #!/usr/bin/Rscript
  files <- fs::dir_ls(here::here(), recurse = TRUE, regexp = "*\\.(md|qmd|Rmd)")
  spelling::spell_check_files(files)

# Style all R code
style: 
  #!/usr/bin/Rscript
  styler::style_dir(here::here())

# Build Quarto website
build-site: 
  quarto render
