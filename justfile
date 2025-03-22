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
  dictionary_file <- here::here("includes/dictionary.txt")
  ignore_words <- character()
  if (fs::file_exists(dictionary_file))
    ignore_words <- readLines(dictionary_file)
  spelling::spell_check_files(
    files,
    ignore_words,
    lang = "en_GB"
  )

# Style all R code
style:
  #!/usr/bin/Rscript
  styler::style_dir(
    here::here(),
    exclude_dirs = c(".quarto", "_extensions"),
  )

# Build Quarto website
build-site:
  quarto render
