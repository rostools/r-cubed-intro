# Use to download all Git repos for the group project work.
# TODO: Convert into function and put into r3
library(magrittr)
library(ghclass)

stop("Prevent accidental sourcing.")

gitcreds::gitcreds_set()
ghclass::github_set_token(gitcreds::gitcreds_get(use_cache = FALSE)$password)

# Use this if you didn't run the create-teams.R script on the computer used for
# the course
org_gh_course_name <- "r-cubed-2022-03"

clone_team_projects <- function(repo_path, parent_directory) {
    project_folder <- fs::path(parent_directory, repo_path)
    ghclass::local_repo_clone(
        repo_path,
        fs::path_dir(project_folder)
    )
}

course_team_repos <- org_repos(org_gh_course_name)
fs::dir_create(fs::path("~", "Desktop", org_gh_course_name))
course_team_repos %>%
    purrr::walk(clone_team_projects,
                parent_directory = fs::path("~", "Desktop"))

# Pull from GitHub repositories
fs::dir_ls(fs::path("~", "Desktop", org_gh_course_name),
           type = "directory") %>%
    purrr::walk(local_repo_pull)
