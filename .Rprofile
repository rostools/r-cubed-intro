options(
  browserNLdisabled = TRUE,
  deparse.max.lines = 2,
  Ncpus = 3,
  dplyr.summarize.inform = FALSE,
  warnPartialMatchArgs = TRUE,
  warnPartialMatchDollar = TRUE,
  warnPartialMatchAttr = TRUE,
  digits = 3,
  width = 68,
  knitr.kable.NA = "",
  # Would like to use some duplicate labels (e.g. "setup")
  knitr.duplicate.label = "allow"
)

if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(usethis))
  suppressMessages(require(gert))
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
