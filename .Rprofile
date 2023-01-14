options(
  repos = c(RSPM = "https://packagemanager.rstudio.com/all/__linux__/jammy/latest"),
  browserNLdisabled = TRUE,
  deparse.max.lines = 2,
  Ncpus = 3,
  dplyr.summarize.inform = FALSE,
  warnPartialMatchArgs = TRUE,
  warnPartialMatchDollar = TRUE,
  warnPartialMatchAttr = TRUE,
  digits = 3,
  width = 68,
  knitr.kable.NA = ""
)

if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(usethis))
  suppressMessages(require(gert))
  try(rspm::enable(), silent = TRUE)
}

# Do it this way to fix a GitHub Action build issue.
# Since the Action runs this profile first *before*
# installing packages (before desc gets installed), it
# throws an error about not finding desc. So this needs
# to be put in this if condition at first.
if (requireNamespace("desc", quietly = TRUE)) {
  options(
    downlit.attached = desc::desc_get_deps()$package[-1]
  )
}
