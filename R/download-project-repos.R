# Use to download all Git repos for the group project work.
# TODO: Convert into function and put into r3
library(magrittr)
library(ghclass)

stop("Prevent accidental sourcing.")

gitcreds::gitcreds_set()
ghclass::github_set_token(gitcreds::gitcreds_get(use_cache = FALSE)$password)

# use this? withr::local_dir()
team_repos <- org_repos("r-cubed-2021-06")

purrr::walk(team_repos, local_repo_clone)

fs::dir_ls(type = "directory") %>%
    purrr::walk(local_repo_pull)
