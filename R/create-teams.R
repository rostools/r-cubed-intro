source(here::here("R/fetch-pre-survey.R"))
library(tidyverse)
conflicted::conflict_prefer("filter", "dplyr")

# Create team names -------------------------------------------------------

stop("Stopping here. Don't want to run this accidentally if you did 'source()' :)")

# Create team names
set.seed(1231)
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
# team_names_final <- team_names[c(6, 8, 11, 12, 13, 22, 29, 30)]
team_names_final <- team_names[c(6, 8, 11, 12, 13, 22)]

# Invite members to organization ------------------------------------------

# remotes::install_github("rundel/ghclass")
library(ghclass)

gh_teams_prep <- presurvey_tidy %>%
    select(github_username, starts_with("perceived")) %>%
    mutate_at(vars(starts_with("perceived")),  ~ . > 1) %>%
    mutate(
        perceived_skill_score =
            perceived_skill_r + perceived_skill_data_analysis +
            perceived_skill_programming + perceived_skill_git
    ) %>%
    select(github_username, perceived_skill_score)

# org_invite("r-cubed-2020-06", gh_teams_prep$github_username)
# org_members("r-cubed-2020-06")
# org_pending("r-cubed-2020-06")

# Create GitHub teams -----------------------------------------------------

# team_create("r-cubed-2020-06", team_names_final)

library(randomizr)

set.seed(7648967)
gh_teams_assigned <- gh_teams_prep %>%
    mutate(team = (perceived_skill_score > 1) %>%
               block_ra(conditions = team_names_final) %>%
               as.character())

# team_invite("r-cubed-2020-06",
#             gh_teams_assigned$github_username,
#             gh_teams_assigned$team)

# Create repos for teams --------------------------------------------------

# gh_repos <- repo_create("r-cubed-2020-06", team_names_final)
# repo_add_team(gh_repos, gh_teams_assigned$team)
