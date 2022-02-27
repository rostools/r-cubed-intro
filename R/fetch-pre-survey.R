source(here::here("R/ignore.R"))
library(googledrive)
library(googlesheets4)
library(tidyverse)
library(lubridate)
conflicted::conflict_prefer("filter", "dplyr")

course_date <- "2022-03"

# Import pre-survey data --------------------------------------------------

renaming_columns <- tibble::tribble(
    ~original_column_names, ~new_column_names,
    "Timestamp", "timestamp",
    "Email", "email",
    "What is your full name?", "full_name",
    "What is your formal position?", "research_position",
    "What city do you work in or near?", "city_work_in",
    "Very briefly, what is your research topic(s)?", "research_topic",
    "How do you perceive your skill/knowledge of [using R?]", "perceived_skill_r_updated",
    "How do you perceive your skill/knowledge of data analysis in general?", "perceived_skill_data_analysis",
    "How do you perceive your skill/knowledge of programming in general?", "perceived_skill_programming",
    "How do you perceive your skill/knowledge of version control (e.g. Git) in general?", "perceived_skill_git",
    "What programs have you previously used for data analysis?", "previously_used_stat_programs",
    "What is your GitHub user name?", "github_username",
    "Copy and paste the results of your \"r3::check_setup()\" into the text box below.", "check_setup_output",
    "Why do you want to attend this course?", "why_attend_course",
    "Does your expectations match with what is described in the syllabus?", "expectations_match_syllabus",
    "Does our \"assumptions about who you are\" (in the syllabus) match with who you actually are? Why or why not?", "matched_assumptions",
    "Do you accept the conditions laid out in the Code of Conduct?", "accept_conduct",
    "In your opinion, what worked well?", "feedback_worked_well",
    "In your opinion, what could be improved?", "feedback_to_improve",
    "Did you encounter any problems during the pre-course tasks?", "encounter_problems",
    "Please describe the problems you've had.", "describe_problems",
    "Which dates would you be available for a video call to help with the problems?", "when_available_for_help",
    "How do you perceive your skill/knowledge of [data analysis in general?]", "perceived_skill_data_analysis_updated",
    "How do you perceive your skill/knowledge of [programming in general?]", "perceived_skill_programming_updated",
    "How do you perceive your skill/knowledge of [formal version control (e.g. Git)?]", "perceived_skill_git_updated",
    "How often do you currently use: [dplyr]", "uses_dplyr",
    "How often do you currently use: [tidyr]", "uses_tidyr",
    "How often do you currently use: [pipe (%>%)]", "uses_pipe",
    "How often do you currently use: [GitHub/GitLab and Git]", "uses_git_github",
    "How often do you currently use: [R Markdown]", "uses_rmarkdown",
    "How often do you currently use: [ggplot2]", "uses_ggplot2",
    "What gender do you identify with?", "gender_identity",
    "What do you expect to learn and what would you like to be able to do with what you've learned?", "course_expectations",
    "dropped", "dropped"
)

presurvey <- drive_get(id = PRE_SURVEY_ID) %>%
    read_sheet() %>%
    set_names(renaming_columns$new_column_names)
# nrow(presurvey)
# View(presurvey)

# Tidy up the survey data -------------------------------------------------

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
            str_remove("\\@"),
        perceived_skill_r_updated = as.character(perceived_skill_r_updated)
          ) %>%
    filter(year(timestamp) == str_sub(course_date, 1, 4), (dropped != TRUE | is.na(dropped)))

# Check who hasn't finished the survey ------------------------------------

presurvey_with_participants <- presurvey_tidying %>%
    mutate(name_from_survey = full_name) %>%
    rename(email_from_survey = email) %>%
    full_join(participants %>%
                  mutate(full_name = name_from_list) %>%
                  rename(email_from_list = email))

participants_list <- presurvey_with_participants %>%
    select(full_name, name_from_survey, name_from_list, email = email_from_list)

# nrow(participants)
# nrow(participants_list)
View(participants_list)

# Get list of emails to remind to finish survey.
# participants_list %>%
#     filter(is.na(name_from_survey)) %>%
#     pull(email) %>%
#     clipr::write_clip()

# Save some details and the feedback --------------------------------------

fix_skill_levels <- function(x) {
    all_levels <- c(
        "Beginner",
        "Beginner-Intermediate",
        "Intermediate",
        "Intermediate-Advanced",
        "Advanced"
    )
    current_levels <- unique(na.omit(x))
    fct_relevel(x, intersect(all_levels, current_levels))
}

# This is for creating the teams in `create-teams.R` script.
presurvey_tidy <- presurvey_with_participants %>%
    filter(name_from_survey == name_from_list) %>%
    mutate(across(matches("^perceived_.*_updated$"), fix_skill_levels))

prep_for_saving <- presurvey_tidy %>%
    select(-contains("email"), -contains("name"), -github_username, -timestamp) %>%
    select(where(~!all(is.na(.x)))) %>%
    mutate(across(perceived_skill_r_updated, as.character))

basic_overview <- prep_for_saving %>%
    select(starts_with("perceived"), starts_with("uses"), gender_identity,
           research_position, city_work_in, previously_used_stat_programs) %>%
    pivot_longer(everything(), names_to = "Questions", values_to = "Responses") %>%
    count(Questions, Responses, name = "Count") %>%
    arrange(Questions, Responses, Count) %>%
    left_join(renaming_columns, by = c("Questions" = "new_column_names")) %>%
    select(-Questions, Questions = original_column_names) %>%
    relocate(Questions)

write_csv(basic_overview, here::here(glue::glue("data/{course_date}-participant-overview.csv")))

precourse_feedback <- prep_for_saving %>%
    select(contains("feedback"), describe_problems, contains("course_expectations"),
           why_attend_course) %>%
    pivot_longer(everything(), names_to = "Questions", values_to = "Responses") %>%
    arrange(Questions, Responses) %>%
    left_join(renaming_columns, by = c("Questions" = "new_column_names")) %>%
    na.omit() %>%
    select(-Questions, Questions = original_column_names) %>%
    relocate(Questions)

write_csv(precourse_feedback, here::here(glue::glue("feedback/{course_date}-precourse-feedback.csv")))
