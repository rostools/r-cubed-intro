source(here::here("R/ignore.R"))
library(googledrive)
library(googlesheets4)
library(tidyverse)
conflicted::conflict_prefer("filter", "dplyr")

# Import pre-survey data --------------------------------------------------

presurvey <- drive_get(id = PRE_SURVEY_ID) %>%
    read_sheet(
        skip = 1,
        col_names = c(
            "timestamp",
            "email",
            "full_name",
            "research_position",
            "city_work_in",
            "research_topic",
            "perceived_skill_r",
            "perceived_skill_data_analysis",
            "perceived_skill_programming",
            "perceived_skill_git",
            "previously_used_stat_programs",
            "github_username",
            "check_setup_output",
            "course_expectations",
            "expectations_match_syllabus",
            "matched_assumptions",
            "accept_conduct",
            "feedback_worked_well",
            "feedback_to_improve",
            "encounter_problems",
            "describe_problems",
            "when_available_for_help"
        )
    )
# nrow(presurvey)
# View(presurvey)

presurvey_tidying <- presurvey %>%
    mutate(
        research_position = research_position %>%
            str_to_sentence() %>%
            str_replace("-", " ") %>%
            str_replace("Phd", "PhD") %>%
            str_replace("^PhD$", "PhD student"),
        city_work_in = city_work_in %>%
            str_replace("København", "Copenhagen") %>%
            str_replace(".*(Copenhagen|Odense).*", "\\1"),
        expectations_match_syllabus = expectations_match_syllabus %>%
            str_to_sentence() %>%
            str_remove_all("\\.") %>%
            str_replace(".*(Yes).*", "\\1"),
        github_username = github_username %>%
            str_remove("\\@")
          ) %>%
    filter(!str_detect(github_username, "helenejuel"))

presurvey_with_participants <- presurvey_tidying %>%
    mutate(name_from_survey = full_name) %>%
    rename(email_from_survey = email) %>%
    full_join(participants %>%
                  mutate(full_name = name_from_list) %>%
                  rename(email_from_list = email))

participants_list <- presurvey_with_participants %>%
    select(full_name, name_from_survey, name_from_list)

presurvey_tidy <- presurvey_with_participants %>%
    filter(name_from_survey == name_from_list)
