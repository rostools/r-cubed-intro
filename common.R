options(
  width = 68,
  knitr.kable.NA = ""
)

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
