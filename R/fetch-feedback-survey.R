source(here::here("R/ignore.R"))
library(googledrive)
library(googlesheets4)
library(tidyverse)

stop("To prevent accidental sourcing.")

# Import pre-survey data --------------------------------------------------

feedback_survey <- drive_get(id = FEEDBACK_SURVEY_ID) %>%
    read_sheet()

# Any duplicate timestamps?
any(duplicated(feedback_survey$Timestamp))

# Clean up and convert to long form
long_feedback_survey <- feedback_survey %>%
    rename(day = `Which of the three days is the feedback for?`,
           time_stamp = Timestamp) %>%
    pivot_longer(cols = -c(time_stamp, day), names_to = "question", values_to = "response") %>%
    filter(!is.na(response), !response %in% c("na", "NA", ".", "-")) %>%
    mutate(response = str_remove_all(response, "\n"))

# Keep and save the quantitative feedback
set.seed(125643)
quantitative_feedback <- long_feedback_survey %>%
    filter(str_detect(question, "Please complete these questions")) %>%
        group_by(time_stamp) %>%
    mutate(question = str_remove(question, "Please .* course. ") %>%
               str_remove_all("\\[|\\]"),
           id = ids::random_id(1, 5)) %>%
        ungroup() %>%
    select(id, survey_item = question, response)

write_csv(quantitative_feedback, here::here("feedback/2020-06-quantitative.csv"))

# Keep and save the general feedback
overall_feedback <- long_feedback_survey %>%
    filter(str_detect(question, "other feedback")) %>%
    select(response)

write_csv(overall_feedback, here::here("feedback/2020-06-overall.csv"))

# Keep and save the session specific feedback
session_feedback <- long_feedback_survey %>%
    filter(str_detect(question, "What (could|worked)")) %>%
    mutate(question = question %>%
               str_remove_all('What|session|\\"|\\?') %>%
               str_trim()) %>%
    separate(col = question, into = c("worked_or_improve", "session"),
             sep = "for the") %>%
    mutate(worked_or_improve = snakecase::to_snake_case(worked_or_improve),
           session = session %>%
               str_trim()) %>%
    pivot_wider(names_from = worked_or_improve, values_from = response) %>%
    arrange(day, session) %>%
    select(-time_stamp)

write_csv(session_feedback, here::here("feedback/2020-06-session-specific.csv"))
