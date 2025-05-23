@_default:
  just --list --unsorted

# Run all recipes
run-all: install-dependencies check-spelling style build-website

# Install package dependencies
install-dependencies:
  #!/usr/bin/Rscript
  pak::pak(ask = FALSE)

# Check spelling
check-spelling:
  uvx typos

# Style all R code
style:
  # Need to install air first
  air format .

# Build Quarto website
build-website:
  quarto render

# Installs the pre-commit hooks, if not done already
install-pre-commit:
  uvx pre-commit install
