source(here::here("R/fetch-pre-survey.R"))
library(tidyverse)
library(ghclass)

stop("To prevent accidentally sourcing.")

# Use the code below to set the GITHUB_PAT for ghclass.
gitcreds::gitcreds_set()
github_set_token(gitcreds::gitcreds_get(use_cache = FALSE)$password)

# Course name for GitHub. YYYY-MM is when the course takes place.
org_gh_course_name <- "r-cubed-2022-03"
instructors <- c("Anders", "Helene", "Luke", "Isabell", "Sufyan", "Stine")

# Create team names -------------------------------------------------------

# Create random team names
set.seed(43787)
team_prefix <- tibble(adjective = praise::praise_parts$adjective) %>%
    filter(nchar(adjective) <= 7) %>%
    pull(adjective) %>%
    str_to_sentence() %>%
    sample()

team_suffix <- tidytext::parts_of_speech %>%
    filter(str_detect(pos, "^Noun$"),
           nchar(word) <= 6,
           !str_detect(word, "\\d|/|-")) %>%
    sample_n(length(team_prefix)) %>%
    pull(word) %>%
    str_to_sentence()

team_names <- glue::glue("Team{team_prefix}{team_suffix}") %>%
    as.character()

# Choose n number of teams, based on number of participants.
# 24/5
team_names_final <- team_names[c(5, 12, 14, 22, 41)]

# Invite members to organization ------------------------------------------

# Need to create the organization on GitHub.

# remotes::install_github("rundel/ghclass")
library(ghclass)

# Get GitHub user name from survey.
gh_teams_prep <- presurvey_tidy %>%
    select(full_name, github_username, matches("^perceived_.*_updated$")) %>%
    mutate(across(-c(full_name, github_username), ~as.numeric(.x) > 1)) %>%
    mutate(
        perceived_skill_score =
            perceived_skill_r_updated + perceived_skill_data_analysis_updated +
            perceived_skill_programming_updated + perceived_skill_git_updated
    ) %>%
    select(full_name, github_username, perceived_skill_score)

# Invite the participants to the GitHub class organization.
# org_invite(org_gh_course_name, gh_teams_prep$github_username)
org_members(org_gh_course_name)
org_pending(org_gh_course_name)

# Who to still invite (those that finished pre-course tasks later).
currently_invited <- c(
    str_subset(org_members(org_gh_course_name), "lwjohnst86", negate = TRUE),
    org_pending(org_gh_course_name)
)
need_to_invite <- setdiff(gh_teams_prep$github_username, currently_invited)
# org_invite(org_gh_course_name, need_to_invite)

# Create GitHub teams -----------------------------------------------------

team_create(org_gh_course_name, team_names_final)

# Randomly assign participants to groups, weighted by their
# perceived skill.
library(randomizr)

set.seed(4316712)
gh_teams_assigned <- gh_teams_prep %>%
    mutate(team = (perceived_skill_score > 1) %>%
               block_ra(conditions = team_names_final) %>%
               as.character()) %>%
    arrange(team, perceived_skill_score)
count(gh_teams_assigned, team)
View(gh_teams_assigned)

# Manually change if need be.
# edit(gh_teams_assigned)

# Put groups into GitHub teams.
team_invite(org_gh_course_name,
            gh_teams_assigned$github_username,
            gh_teams_assigned$team)

# Create repos for teams --------------------------------------------------

gh_repos <- repo_create(org_gh_course_name, team_names_final)
repo_add_team(sort(gh_repos), sort(unique(gh_teams_assigned$team)))

# Setup project and other settings for teams ------------------------------

# TODO: This is untested right now
create_team_projects <- function(directory) {
    prodigenr::setup_project(directory)
    withr::local_dir(directory)
    usethis::use_blank_slate("project")
    usethis::use_data_raw("original-data")
    gert::git_status()$file %>%
        gert::git_add()
    gert::git_commit("Setup project")
    gert::git_push()
}

team_repos <- org_repos(org_gh_course_name)
fs::dir_create(org_gh_course_name)
fs::path("~/Desktop/", team_repos) %>%
    walk(local_repo_clone) %>%
    walk(create_team_projects)

# Assigning instructors to groups -----------------------------------------

set.seed(358677)
instructor_assigned_teams <- tibble(
    teams = team_names_final,
    primary = sample(instructors),
    secondary = sample(instructors)
)
instructor_assigned_teams

org_team_repos <- org_repos(org_gh_course_name)
instructor_assigned_teams %>%
    mutate(teams = glue::glue("[{teams}](https://github.com/{org_team_repos})")) %>%
    rename_with(str_to_sentence) %>%
    knitr::kable() %>%
    clipr::write_clip()
