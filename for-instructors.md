# For Instructors

## Workshop details

### Instructor and helper number

The recommended number of instructors for a 25-35 class size is about 3-6
instructors (~1 instructors for every 1-2 sessions). 
If there are more instructors, then less helpers are needed. 
The recommended combined total number of helpers
and instructors is about 6 for a smooth workflow experience for the learners.

Once you have confirmed your team of instructors and helpers, use WhatsApp or another preferred messenger app to set up a group message that supports easy communication.

### Setting up teams

Before the introduction session (maybe the day before),
assign people into groups 
and create GitHub teams for them using the [ghclass] package.
Use the R script `R/create-teams.R` to generate random group names,
and then assign people to these teams and to repositories.

[ghclass]: https://rundel.github.io/ghclass

Once teams are created, assign one instructor or helper to each group.

### Before your session

- Have an RStudio theme that uses a white background with black text.
This setting is easier to read on projectors.
- In `Global Options -> Appearance`, 
put a higher Zoom value and increase the font size (maybe around 14). 
Exact zoom and font size depends on the projector.
- Put the Console and Script panes side by side rather than stacked. 
This can be changed in the `Global Options -> Pane Layout` 

### First day

In the room, arrange the tables into groups for each of the teams.
As participants come in, get them to sit in their assigned team by referring to the team lists placed in the middle of each table.

During the introduction, introduce all the instructors and helpers.

Some time during the introduction session, 
get them to stand in line and arrange themselves from 
"complete beginner" to "know a little bit" for R, 
data analysis, and programming.
During the introduction, 
describe the assignment and what's the purposes of the teams.

Before the lunch break, get the groups to have lunch together 
and introduce each other more. 
Get them to say their program, if they've used R before, 
some struggles they've had with R and with data analysis in general, 
and why they want to learn R.

### Throughout the sessions

- For most of the sessions,
there are sections that tell the participants to read on their own.
Know beforehand where these sections are,
get them to read over the section.
Ask for any questions about what they read, 
and if you want to elaborate you can, 
but it's not necessary given they just read it.
- For the exercises, 
make sure to get the learners helping each other out in their groups.
- Exercise solutions do not need to be covered by the instructor,
given the solution is provided already.
- Try to keep the screen on your RStudio as much as possible 
and don't switch applications often, 
only when you need to go to the course material or to show an exercise.
- For the "Project Management and Best Practices" session (Section \@ref(r-project-management)), talk through the basics of R, including how to troubleshoot or get help. Check for participants' understanding using the stickies (see next section).
- For code-along sessions, narrate what you are doing as you are coding by providing explanations of what you hope to achieve with each function/piece of code. This is particularly important for the wrangling sessions, where you should explain what each function does and examples of instances where you would use each function.
- Be aware of how much space you have on the projector screen 
and don't let R code go too long. 
You have two options to take so that all code stays on the screen
(use which ever you find most visually appealing):
    1. Use soft-wrapping of R code. 
    You can set this in RStudio by going to `Tools -> Global
    Options -> Code -> Editing tab`
    and then tick the "Soft-wrap R source files" option.
    2. Or, adding more lines to the code then you normally would use.
    For instance, instead of:

        ```r
        ggplot(NHANES, aes(x = BMI, y = Age, colour = Diabetes)) +
            geom_point()
        ```
    
        You could add new lines like:
    
        ```r
        ggplot(NHANES, 
               aes(x = BMI, 
                   y = Age, 
                   colour = Diabetes)) +
            geom_point()
        ```

### Making use of the stickies

- Check in with the learners to see where they are at by asking something like:
"Do you see the same thing as is on the screen? 
If yes, put the 'all good' sticky on your laptop. 
If no, use the 'need help' sticky."
- For the reading activities, before starting, ask:
"Please read this section as instructed. 
When you are done, put the 'all good' sticky up."
- For exercises, before starting, ask:
"Please complete the exercise. When you are done,
please put the 'all good' sticky up.
If you need help, put the 'need help' sticky up."
- Throughout the exercises and code-along sessions, reinforce the use of troubleshooting techniques including finding help from othe resources.

## Content and other details

### Version control

For the reading parts, let them read it first 
and then walk through the material again, 
to reinforce importance of version control 
and doing it formally.
So give them a heads up that you'll be repeating things,
specifically to reinforce the concepts.

It's important in this session to go **slowly**. Version control is a challenging
topic and isn't something most people have ever learned about or dealt with.
So take it slow and make sure everyone is on the same page. Make use of stickies
frequently to assess how everyone is doing.

### Data management

This session usually takes a fair amount of time relative to the other sessions.
The R Markdown session is right afterwards and since it usually is done quicker
than other sessions, the Data Management session can go into the R Markdown session.

### Data visualization

For the section on the bar-with-standard-error plots, make sure to go over the problems
and major flaws with using this type of plot. Really try to reinforce the concept
here.

### About the slides

The slides are generated from the [xaringan] R package,
which uses [remark.js].
In the slides, there are notes that you can read 
either by going to the source `.Rmd` file 
or by opening the slides and hitting the `p` key.
To use the slides more efficiently, 
check out the [remark.js keyword shortcuts].

[remark.js]: https://remarkjs.com/#1
[xaringan]: https://github.com/yihui/xaringan
[remark.js keyword shortcuts]: https://github.com/gnab/remark/wiki/Keyboard-shortcuts

### About using surveys

We used Google Forms to create surveys for pre-, during-, and post-course
feedback and questionnaires. The purpose of using surveys in the current context
is purely to gain feedback on aspects of the course that could be improved
in future iterations, such as the "pace" of material being presented.

The interface for creating surveys is quite clear and functions are very intuitive. 
You will see a floating menu to the right of your template where you can add 
questions etc. One particularly useful tool is the ability to duplicate question and answer
matrices. If you are using this course material to run your own independent workshop
and want the surveys to use as a template that you can then customize,
create a [new issue](https://gitlab.com/rostools/r-cubed/-/issues/new) to request
access.

We included survey links as a function within the r3 package so learners can quickly 
access the survey. Creating surveys is quite easy with Google Forms. Below are a 
list of questions to include (depending on the survey):

- **Pre-course**:
    - Basic questions about the participant (position, name, place of work).
    - Questions about perceived skill/knowledge on using R, programming, data
    analysis, and version control.
    - Questions related to their pre-course tasks.
    - Feedback on the pre-course tasks, like: What worked well? What could be improved?
- **Daily feedback**:
    - For each session, we asked: What worked well? What could be improved?
    - For final session, we asked broader quantitative comments like: I think I
    learned a lot; I think the instructors communicated clearly; I think there 
    was good alignment between content and delivery.
- **Post-course**:
    - Basic questions about the participant (like in the pre-course survey).
    - Questions about current usage of the tools they learned during the course.
    - Questions about and reflections on the course.

### About the schedule

The schedule is not designed to be a fixed sequence of sessions. Some sessions
may run shorter so you can move on to the next session afterwards, while other
sessions may run longer and go into the next session. That is ok if that happens.
The schedule is a guide only, an overview of what will be covered and when.
    
## General course admin

### Helper R scripts

There are several R scripts in the `R/` folder of the repository that can be
modified and used to help manage and organize some administrative aspects of the course. Here is a brief
overview of what each script is and how it can help.

- `build-slides.R`: As the name suggests, this script will build (or re-build)
the R Markdown slides in the `slides/` folder.
- `checks.R`: Can be used to run basic checks of the URLs in the chapters. 
URLs are not always stable, so this checks if they are active/live.
- `create-teams.R`: This script will group the participants in to teams, create and name teams on GitHub, create repositories for 
the teams, and assign the teams to those repositories. Relies on `fetch-pre-survey.R` (see below).
- `fetch-feedback-survey.R`: Fetches, cleans, and processes the participant feedback
from the Google Form survey. Uses the `ignore.R` file that contains the Google
document ID and is not present in the repository, so you'd have to create your own Google doc.
- `fetch-pre-survey.R`: Like the `fetch-feedback-survey.R`, this fetches and 
processes the pre-survey results. Also uses the `ignore.R` file.
- `ignore.R`: Not in the repository, so will need to be created to contain
the `PRE_SURVEY_ID` and `FEEDBACK_SURVEY_ID` variables that have the Google
document ID for the survey results.

Other scripts are used within the material to generate content or do other tasks:

- `extract-solutions.R`: This script contains a function to extract solutions
from each of the exercises and prints them in the `resources.Rmd` section.
- `slide-setup.R`: Contains code that sets up the themes, options, and 
reference management for the slides in `slides/`.

### About the r3 package

The r3 package is used as a companion and helper throughout this course to
making it easier to do certain tasks (like go to the survey). Considering this,
if you want to use this course material and run a course like this on your 
own, you can clone the r3 package and modify it as necessary for your own
purposes. See the [README](https://gitlab.com/rostools/r3/-/blob/master/README.md)
of the r3 package for more details.
