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
# Use the code below to set the GITHUB_PAT for ghclass. Need to first use:
# gitcreds::gitcreds_set()
ghclass::github_set_token(gitcreds::gitcreds_get(use_cache = FALSE)$password)
# org_invite("r-cubed-2021-06", gh_teams_prep$github_username)
org_members("r-cubed-2021-06")
org_pending("r-cubed-2021-06")

# Who to still invite (those that finished pre-course tasks later).
currently_invited <- c(
    str_subset(org_members("r-cubed-2021-06"), "lwjohnst86", negate = TRUE),
    org_pending("r-cubed-2021-06")
)
need_to_invite <- setdiff(gh_teams_prep$github_username, currently_invited)
# org_invite("r-cubed-2021-06", need_to_invite)

# Create GitHub teams -----------------------------------------------------

team_create("r-cubed-2021-06", team_names_final)

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
team_invite("r-cubed-2021-06",
            gh_teams_assigned$github_username,
            gh_teams_assigned$team)

# Create repos for teams --------------------------------------------------

gh_repos <- repo_create("r-cubed-2021-06", team_names_final)
repo_add_team(sort(gh_repos), sort(unique(gh_teams_assigned$team)))

# Assigning instructors to groups -----------------------------------------

instructors <- c("Daniel", "Helene", "Luke", "Hannah", "Bettina")

set.seed(358677)
instructor_assigned_teams <- tibble(
    teams = team_names_final,
    primary = sample(instructors),
    secondary = sample(instructors)
)
instructor_assigned_teams

instructor_assigned_teams %>%
    knitr::kable() %>%
    clipr::write_clip()
