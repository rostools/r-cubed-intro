source(here::here("R/fetch-pre-survey.R"))
library(tidyverse)

stop("To prevent accidentally sourcing.")

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
team_names_final <- team_names[c(6, 8, 11, 12, 13, 22)]

# Invite members to organization ------------------------------------------

# Need to create the organization on GitHub.

# remotes::install_github("rundel/ghclass")
library(ghclass)

# Get GitHub user name from survey.
gh_teams_prep <- presurvey_tidy %>%
    select(github_username, starts_with("perceived")) %>%
    mutate_at(vars(starts_with("perceived")),  ~ . > 1) %>%
    mutate(
        perceived_skill_score =
            perceived_skill_r + perceived_skill_data_analysis +
            perceived_skill_programming + perceived_skill_git
    ) %>%
    select(github_username, perceived_skill_score)

# Invite the participants to the GitHub class organization.
# You'll need a GITHUB_PAT. Check out the ghclass documentation.
org_invite("r-cubed-2020-06", gh_teams_prep$github_username)
org_members("r-cubed-2020-06")
org_pending("r-cubed-2020-06")

# Create GitHub teams -----------------------------------------------------

# team_create("r-cubed-2020-06", team_names_final)

# Randomly assign participants to groups, weighted by their
# perceived skill.
library(randomizr)

set.seed(732477)
gh_teams_assigned <- gh_teams_prep %>%
    mutate(team = (perceived_skill_score > 1) %>%
               block_ra(conditions = team_names_final) %>%
               as.character())

# Put groups into GitHub teams.
team_invite("r-cubed-2020-06",
            gh_teams_assigned$github_username,
            gh_teams_assigned$team)

# Create repos for teams --------------------------------------------------

gh_repos <- repo_create("r-cubed-2020-06", team_names_final)
repo_add_team(sort(gh_repos), sort(unique(gh_teams_assigned$team)))
