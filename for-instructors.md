# For Instructors

For details about adding to or editing the content, check out the
[CONTRIBUTING](https://gitlab.com/rostools/r-cubed/-/blob/main/CONTRIBUTING.md)
guidelines. All other guidelines, tips, and instructions for teaching or helping
with this course are found on this page.

## General tips for teaching or helping out

Here are some steps and guidelines when you are an **instructor**:

- Start by *introducing a bit about yourself* and perhaps why you're interested
in teaching R and data analysis.
- Keep mindful of the time and try to *stay on time*. The lead organizer will be
also be keeping track of time and wave to you to continue on or slow down.
- Try to assume the participants *know as little as possible*. This is actually
quite hard, but try as best you can. The lead organizer may take notes and
provide feedback after your lesson or clarify concepts to the participants. Try
to (briefly) explain as much aspects as possible of what you are doing,
including how to open RStudio or how to run code (e.g. press `Shift-Enter` in RStudio).
- The majority of the lesson material is *participatory live-coding*, so use of
slides is minimal. The purpose of the course is to *type with the participants*,
to show by doing.
- **Check in with participants**: We distribute colored sticky notes to each
participant so that they can flag problems with one color and success with
another color. Use these indicators to check your pacing and where the
class is at.
- We teach the *[tidyverse][tidyverse] way of using R*, meaning we use
packages like dplyr, tidyr, rmarkdown, ggplot2, and so on. This also means making
use of the pipe `%>%` operator.
- We follow the tidyverse [*way of writing and styling R code*](https://style.tidyverse.org/).
- Be kind, and remember, your words *matter a lot*. Try to avoid words like
"basically", "its just", "as simple as", and so on. This is difficult, but at least
try.

Being a **helper** is much simpler. When you see a participant with a "help" sticky
on their laptop, go and see what help you can provide. A couple things to review
and to keep in mind when helping:

- Review the curriculum the instructors will be teaching.
- We teach the [tidyverse](https://www.tidyverse.org/) way of using R, meaning we use packages
like dplyr, tidyr, rmarkdown, ggplot2, and so on. 
- We follow the tidyverse way of [writing and styling R code](https://style.tidyverse.org/).
- Be kind, and remember, your words and how you help *matter a lot*. They can 
make participants feel better or worse. So be kind, considerate, and understanding!

Before coming to help, we would recommend taking a look at the tidyverse style
guide as well a quick skim through of the [R for Data Science book](https://r4ds.had.co.nz/).

### More on "Participatory Live-Coding"

Live-coding is a hands-on method of teaching coding to a group in which the
instructor shares their screen with the group and types out and narrates all the 
commands in real-time on their own computer while the group follows along.
Live-coding is a very effective teaching technique: it forces the instructor to
go slowly and ensures that participants get to try out every command being used.
It allows learners to experience common errors themselves, to see errors occur
when for the instructors (thus demystifying that everyone no matter the skill level
experiences errors) and debug them in a supportive environment, to explore
variations on material as they go, and to immediately check their understanding
by trying things hands-on.

Live-coding is a technique used by [Software Carpentry](https://software-carpentry.org/about/). 
Software Carpentry has lots of great resources explaining the why and how of live-coding:

- [10 tips and tricks for instructing and teaching by means of live coding](https://software-carpentry.org/blog/2016/04/tips-tricks-live-coding.html).
- The Software Carpentry [instructor training manual](https://carpentries.github.io/instructor-training/) 
includes many resources about programming education.

## Workshop details

### Instructor and helper number

- The recommended number of instructors for a 25-35 class size is about 3-6
instructors (~1 instructors for every 1-2 sessions).
If there are more instructors, than less helpers are needed. 
- A recommended ratio of instructor/helper to participant is about 1 to 4-6,
which we've found ensures the smoothest learning experience.
- Once you have confirmed your team of instructors and helpers, use a
messenging app (WhatsApp, Telegram, Signal, or Slack) to set up a group chat
that supports easy communication.

### Setting up teams

- Before the introduction session (maybe the day before),
assign people into groups 
and create GitHub teams for them using the [ghclass][ghclass] package.
Use the R script `R/create-teams.R` to generate random group names,
and then assign people to these teams and to repositories.
- Once teams are created, assign one instructor or helper to each group to help
them throughout the course and especially during the final group project.

[ghclass]: https://rundel.github.io/ghclass

### Before your session

- Have an RStudio theme that uses a white background with black text.
This setting is easier to read on projectors.
- In `Global Options -> Appearance`, 
put a higher zoom value and increase the font size (maybe around 14). 
Exact zoom and font size depends on the projector.
- Put the Console and Script panes side by side rather than stacked. 
This can be changed in the `Global Options -> Pane Layout` 
- If you use Vim or Emacs keybindings in RStudio, change to the default that
the learners use, so that 1) they see similar behaviour as what you are doing
2) doing fancy/quick stuff is *not* going to help them learn, and 3)
it slows you down a lot more since your muscle memory for the default keybindings
will probably be similar to the learners muscle memory.

### First day

- In the room, arrange the tables into groups for each of the teams.
As participants come in, get them to sit in their assigned team by referring to
the team lists placed in the middle of each table.
- During the introduction, introduce all the instructors and helpers.
- Some time during the introduction session, 
get them to stand in line and arrange themselves from 
"complete beginner" to "know a little bit" for R, 
data analysis, and programming.
During the introduction, 
describe the assignment and what's the purposes of the teams.
- Before the lunch break, get the groups to have lunch together 
and introduce each other more. 
Get them to say their program, if they've used R before, 
some struggles they've had with R and with data analysis in general, 
and/or why they want to learn R.

### Throughout the sessions

- For most of the sessions,
there are sections that tell the participants to read on their own.
Know beforehand where these sections are and
get them to read over the section when you come to it.
You can briefly go over the content again, to reinforce what they read and to
address any questions, but its not necessary to spend too much time on it.
- For the exercises, 
make sure to get the learners are helping each other out in their groups.
- Exercise solutions do not need to be covered by the instructor,
given the solution is provided already. However, if there is time, it can be useful
to the participants to have the instructor narrate about how the code works and
why we used this code.
- Try to keep the screen on your RStudio as much as possible 
and don't switch applications often, 
only when you need to go to the course material or to show an exercise.
Otherwise people get lost, since they have to be looking up to the screen and
then down to their own laptops, which takes a lot more time.
- For the "Project Management and Best Practices" session (Section
\@ref(r-project-management)), talk through the basics of R, including how to
troubleshoot or get help. Check for participants' understanding using the
stickies (see next section).
- For code-along sessions, narrate what you are doing as you are coding by
providing explanations of what you hope to achieve with each function/piece of
code. This is particularly important for the wrangling sessions, where you
should explain what each function does and examples of instances where you would
use each function.
- Try not to deviate too much or go on tangents during the code along. The
code-along should have almost the exact same code as is on the website.
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

- Check in with the learners to see where they are at by saying something like:
"Do you see the same thing as is on the screen? 
If yes, put the 'all good' sticky on your laptop. 
If no, use the 'need help' sticky."
- For the reading activities, before starting, say:
"Please read this section as instructed. 
When you are done, put the 'all good' sticky up."
- For exercises, before starting, say:
"Please complete the exercise. When you are done,
please put the 'all good' sticky up.
If you need help, put the 'need help' sticky up."
- Throughout the exercises and code-along sessions, reinforce the use of
troubleshooting techniques including finding help from other resources.

### After the workshop

It's a good idea to do a debrief with all the instructors on what worked and
what could be improved after the workshop finishes. It's also a time to give
peer feedback. Workshops aren't just a source of learning for the participants,
but also for the instructors! So, while you are teaching or helping out, keep
note of any feedback or comments you could give to improve the other
instructors' (and your own) teaching. During the debrief we'll each say one
thing each of us should continue doing and two things that they could improve
on.

## Content and other details

### Version control

- For the reading parts, let them read it first 
and then walk through the material again, 
to reinforce the importance of version control 
and doing it formally.
So give them a heads up that you'll be repeating things,
specifically to reinforce the concepts.
- It's important in this session to go **slowly**. Version control is a challenging
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
The schedule is a guide only, an overview of what will be covered, and when.
    
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
document ID and is not present in the repository, so you'd have to create your own Google Doc.
- `fetch-pre-survey.R`: Like the `fetch-feedback-survey.R`, this fetches and 
processes the pre-survey results. Also uses the `ignore.R` file.
- `ignore.R`: Not in the repository, so will need to be created to contain
the `PRE_SURVEY_ID` and `FEEDBACK_SURVEY_ID` variables that have the Google
document ID for the survey results.

Other scripts are used within the material to generate content or do other tasks:

- `slide-setup.R`: Contains code that sets up the themes, options, and 
reference management for the slides in `slides/`.

### About the r3 package

The r3 package is used as a companion and helper throughout this course to
making it easier to do certain tasks (like go to the survey). Considering this,
if you want to use this course material and run a course like this on your 
own, you can clone the r3 package and modify it as necessary for your own
purposes. See the [README](https://gitlab.com/rostools/r3/-/blob/main/README.md)
of the r3 package for more details.

## Lecture Notes

The lecture notes provided in this section are an edited transcript of the oral presentation of the lectures as given during the course in June 2020. They serve as a general reference for the line of thought behind the slide set but should not be seen as prescriptive. Particularly the examples could be adapted according to the needs of the intended audience.

### Finding and Obtaining Open Datasets

In this section, we will look at some practical ways to find and access open data. This introduction is by no means exhaustive but is designed to help you find datasets that you can use to: 1) practice your data wrangling and analysis skills; 2) check the reproducibility of published papers; and 3) conduct original research. Along the way, we will see how researchers and institutions are currently publishing datasets and analytical code. We will also see that the situation is not as good as it could be.

To start with, it is worth pointing out that accessible data is only one part of a wider set of principles guiding open and reproducible science.

As you can see on Slide 2, Open Science also encompasses open access publication, open reproducible research, open science tools (such as R), and higher-level principles such as open science evaluation and policies. We will touch on several of these branches in this course, but at this point, the focus is on open and accessible data.

When people think of open data, their first thought is often whether the data can be downloaded from the internet. However, this is only one part (i.e., accessibility) of the four key components of open data. For data to be truly open, it needs to be FAIR: Findable, Accessible, Interoperable and Reusable. Let’s explore these components.

**Findability:** Data can only be findable if it is indexed somewhere by a search engine or repository. In an ideal situation, somebody who searches for any feature of the data should find it. This requires each data element (e.g., a variable or whole dataset) to have a Universally Unique Identifier (UUI), which is linked to contextual and searchable metadata (i.e., data about data). Contextual metadata can exist at different levels, ranging from individual variables to the whole dataset. The contextual part refers to the circumstances or context in which each variable and the whole dataset was created.

Let’s consider what type of metadata would be relevant to have at the level of a dataset, including how the dataset was generated (i.e., study design, source population, invitation process, response rates, and informed consent process). At the level of a variable, contextual metadata could describe what the variable represents, how the measurement was obtained or derived (e.g., equipment used and quality control features), and which data cleaning, processing, and interpretation steps have already been taken (including when, by whom, and with which aim/perspective in mind). In effect, the metadata should ideally provide all the information you need to decide whether the variable is suitable for your own research purpose, as well as all the necessary background to use it comfortably. Some of these points also relate to reusability, which we will come to a bit later.

There is an added layer to the expectations we should have for findability and the contextual metadata needed for this. Datasets should be findable not only by humans, but also by machines. This means that the metadata should preferably not only be available in prose or natural language, but also in machine-readable formats (standardised codes and ontologies).

**Accessibility**: Accessibility relates to the steps you need to go through in order to actually get a copy of the data. Can you just download it from an online repository, or do you need to apply/pay for access? We will take a closer look at some of the different access models a bit later on.

**Interoperability**: This means that the data and metadata should be in a format that can be used by different researchers with different tools. For example, it means that the data should not be in a format that forces you to use software owned only by one company, including having to have a licence for that software. A very simple example of an interoperable way of formatting data is to use a CSV file (comma separated file), which stores the raw data in the simplest way possible. When datasets become more complex (e.g., when there are multiple tables that are related to each other), an open format can be used where the description of the database and the structure of the database is included in a format file (e.g., as an XML schema) that tells software how the database is structured. There are some formats that have an intermediate form in terms of interoperability, such as SAS, SPSS, and Stata database formats. These formats are not directly interoperable since they are specific for the respective statistical packages, but their structure (schema) is known and can be used to transfer the data from one format to the other. Generally, these formats are remnants of dated closed approaches that have gradually been opened. Unfortunately, there is still lots of data in fully proprietary formats, which means that a company, university, or another organisation owns the only software that can be used to access data in their format. They do this by keeping the data schema secret and the data encrypted in such a way that it can only be accessed by using the software they provide. Many companies used to do this, including all the usual statistical packages and some word processors/spreadsheets, but most of these formats have been reverse-engineered and been made public in recent decades. However, we still encounter a lot of closed and non-interoperable data formats, mostly in software tied directly to measurement hardware. For example, many of the commercial accelerometers targeted at consumers will store the raw data they collect in a proprietary format, and only make a highly processed subset or summary of the data accessible to users. This means that these devices are of limited use for investigators who are interested in using all the collected data. Closed formats are also often seen in software linked to imaging and other measurement hardware. 

However, it is not only companies that choose to close their formats and thereby make their data schemas non-interoperable. In the diabetes field, the clearest example is the HOMA-2 model, which has been developed by Oxford University but has never been published. The university makes an online tool available that you can freely use to calculate HOMA-2, but the algorithm behind it is proprietary, which means that the only way to obtain HOMA-2 values is by using their website.

**Reusability**: This refers to the question of whether you have all the information you need to assess whether you want, can, and are allowed to (re)use data for a different purpose. This is somewhat related to findability in the sense that rich and descriptive metadata helps you know what the dataset contains, but also with information about the licences, permissions, and procedures that govern the dataset. This information should allow you to assess whether the data owner allows the dataset to be used for the purposes you have in mind, under which conditions, and which commitments you make to acknowledgement of the data source.

You may have noticed that the FAIR structure talks about principles and that it does not impose or suggest any specific implementation or technology. FAIR principles don’t dictate that data should be in the public domain. Most FAIR data do have a data owner and will be governed by a licence. We will see how this works a bit later on.

Let’s turn to the practical aspects, starting with the first part: Finding data. On the slide, you will see some of the starting points for finding data that we often encounter. The easiest starting point is quite close to home; in your own research network. You may know of datasets that other researchers have collected. For example, you may hear an interesting talk at a conference and think, “I could do something interesting with that dataset”. So, after the presentation, you talk to the researcher and ask about gaining access to their data. In another example, perhaps your supervisor tells you, “There's this cool dataset out there. Email X and they will give you access.” This is very much the traditional way of finding data, and even though it is very focused, it is not scalable.

A second approach starts with a publication you may come across which uses data that you find interesting, and where the dataset is available through a public repository. We will look into this option a bit more, as it is becoming increasingly common. There are some journals (e.g., eLife) that require that data are made available where possible. The PLoS journals require that all authors indicate how the data underlying each publication can be accessed. This could still be through direct contact with the authors, but many authors upload the datasets to repositories and provide a link in the paper. One search strategy could be to start with publications that you find interesting, check the data access statement, and access the data through the linked repositories. This approach already sounds better than going through networks, but we will see that there are still some disadvantages and many limitations.

The third approach would be to search directly through the repositories for keywords linked to the topics that you are interested in. This also sounds like an attractive approach, but unfortunately, there are lists of repositories ranging from very general repositories to repositories focused exclusively on a very specific field. There are even search engines to find good lists of places to find open data. It means that you may have to search repeatedly from different starting points to identify a suitable open and accessible dataset.

When you find a dataset that is suitable, the next practical question is: “What do I need to do to get access?” There is a wide range of options from closed to fully open (FAIR). Closed data is the traditional status. It basically means that you don’t have access unless you’re part of the research group or company that owns and holds the data. We won’t talk about this option too much here. Then, there are databases that you can buy access to via “commercial access”. An example is the CPRD, the Clinical Practice Research Datalink. This is a database that collects de-identified patient data from a network of general practices in the UK and is managed by the UK Medicines & Healthcare Products Regulatory Agency. Researchers can buy access to the database on a commercial basis. If we go to their webpage and click through to the page that outlines their pricing structure, you can see that it costs £330,000 to get a multiple access licence to run multiple projects on this database. So, that price alone puts it beyond the scope of most PhD projects, and even beyond the scope of most research institutes. It's mostly pharmaceutical companies that access databases like this.

The next approach is data sharing within a collaboration or within a project. As we saw previously, this is the traditional way of doing things (e.g., your supervisor telling you to contact a certain research group). In this format, you and your collaborators all know each other and have either informal (usually oral) or semi-formal (written) agreements on how you will access and work with the data. This model of data sharing is still restricted because you must be part of the collaboration in order to access the data. Even though this is still very common practice, it is a model we would like to start moving away from. 

The next model is called “gated data sharing”. In this model, the database is accessible to people outside of the research group that collected the data, but the research group must approve your application to access the data. A dataset that I have worked with for several years at UCL in London, the “Whitehall II Cohort”, uses this model. They have a very clearly defined data sharing policy, which is published on their website. As you can see, they indicate that access is for bonafide (i.e., honest) research questions. This means that you need to write a data application that designates what your aim is and which variables you wish to use, as well as some background of your research experience, prior publications, and the institution you are affiliated with. This application is then discussed within a committee of professors and researchers from the Whitehall Study team, and they decide whether it fulfils their criteria for data sharing. This is the “gated” part of the model, where the study’s researchers are the gatekeepers deciding who can have access. In this format, there is no requirement for you to collaborate with the original researchers, although many still do as they have extensive experience in the structure and peculiarities of the data. In the case of the Whitehall II Cohort, there is an administrative fee, but it is much lower than the CPRD (i.e., £500) and only meant to cover the costs of processing applications and making the specific data selection for your project.

There are examples of datasets that only require registration (i.e., who you are and what you want to do with the data) and there is no committee to judge whether your application is good enough. You must also sign some level of data sharing agreement where you commit to using and storing the data safely and securely, and do not try to contact study participants. An example of this model is the ELSA Study, another UK cohort study, that has archived its data on the UK Data Service (i.e., a national data archive for the UK including census data). On the website, you can simply make an account, submit a short description of the project, and download the entire dataset. You don't need to select variables. It takes about 7 to 10 days to get through the process of approval and get access to the complete dataset. This solution is a lot better than the previous solutions as it does not depend on committee approval, but in a lesser way, it is still gated.

A similar procedure applies to obtaining data from one of the largest data sources, the UK Biobank. This is a dataset with extensive measurements on more than half a million participants, including full GWAS data and quite detailed phenotypes. In order to obtain UK Biobank data, you must apply with a project description, pay a processing fee, and commit to a data transfer agreement. However, the evaluation process does not consider the academic merits of your application or whether a different group may already be looking at this question.

Finally, there is a totally open model in which can just download micro-data (i.e., individual level data in the case of human cohorts/surveys) from an online repository without a need to register or sign agreements. This model is much more typical outside of the medical sciences (e.g., astronomy, geology, biology, economics, and physics), where there are no issues around GDPR or privacy of individual participants.

However, it is increasingly possible to find datasets in the medical sciences and epidemiology that can simply be downloaded in a totally open model. An example is the dataset you will be using today, the NHANES dataset. This dataset is a cleaned-up version made specifically for teaching purposes and incorporated into the NHANES package in R. You can visit the National Institutes of Health (NIH) website and see a complete list of all the questionnaires and different data waves included in this dataset, and you can download the parts you are interested in using here and now. In practice, you will find that downloading the data is only the first (and perhaps easiest) step. Before you can really start working with the data, you will need to find and read a lot of documentation in order to understand exactly how the sample was created, what the different variable names mean, and which peculiarities are important to keep in mind when analysing the data. This means that even if the NHANES data is Findable, Accessible, and Interoperable, its Reusability is still dependent on a lot of preparatory work.

You may be wondering how it is possible to make individual level data openly accessible like this, while there are so many rules around data and privacy protection. In Europe, any organisation that collects, stores, processes, or makes data available on individuals needs to abide by the GDPR and its national implementations. In other countries, similar laws exist, albeit generally not as strict as the GDPR.

First, the datasets you can download (with any type of access model) are pseudonymised. This means that any direct individual identifiers such as name, ID number (e.g., CPR), address, and date of birth have been removed from the dataset and replaced by a random ID number that does not match to other datasets. Although this makes identification of individual records in other databases more difficult, it does not make it impossible. It has been shown that if you have enough data fields in your data and you have access to a master database that includes these same variables, it is relatively easy to match and identify individuals based on propensity score matching. In order to make this more difficult, you would have to use further obfuscation techniques, such as rounding numbers to integers/one decimal so that the resulting groups become larger, or by adding some random noise.

A second point to consider, and which makes the process for accessing individual level datasets very different than for accessing, for example, data from registries, is the presence of informed consent. If, at the time of data collection, the participants have been told that their participation is for a research dataset that will be in the public domain/shared with other researchers in an openly accessible way, and they have consented to this, it would be acceptable for the data to be made available. Of course, this will be highly dependent on how the original consent form was formulated.

For example: in the Whitehall II Study, the informed consent forms signed in the earlier phases did mention use of the data for scientific purposes by researchers outside of the local team but explicitly stated that it wouldn’t be used for commercial purposes. If the dataset would be put online in a freely downloadable form, there would be no way to guarantee that it would not be used for commercial purposes; hence, the need for a committee that judges the academic merit of each project that requests data access. As such, it is important to realise that the exact formulation of the consent people provide can have very long-term consequences. We must think about this as we set up new studies. It also means that, if you are considering making an individual level participant dataset available, you should carefully check informed consent, other permissions, and local guidance/rules before doing so.

Next, let's see what happens when we try to find open data. Let’s try the second approach to access and take a closer look at publications that provide a link to their data. The PLoS journals were one of the first to implement an explicit policy on data availability a few years ago. This policy states that every publication should include a link to the data that is behind the results being presented in that publication. At the very least, authors need to include a data statement either: 1) giving details of where the data can be found and which procedures apply to accessing it; 2) stating that all the data is already in the manuscript; or 3) stating the reasons why data access cannot be provided.

Let’s visit the PLOS website and search for ‘diabetes’ to see what we find. Looking at a few of the most recent papers: What do they say in the data availability statement? You will most likely see a combination of no data, gated data access, and fully open access. 

In 2018, a paper was published that analysed the content of the data availability statements of the PLoS journals. The authors went through all the PLoS journals, extracted the data availability statements, and classified them. For example, it mentions ethical and legal restrictions in 7.4% of cases. This effectively means that there is no access to the data. In 24% of cases, the data statements say that all the reported data are in the paper, and in 45% of cases, that all the reported data are in the paper (or the supplemental information). I guess that this could be correct for small datasets, such as animal studies or studies of cell lines, where all the data could be in an Excel spreadsheet that is attached as supplemental material. But I suspect that, in many cases, the tables and attachments only contain a high-level summary of the data, and not all the raw data you would need to replicate the analyses. Finally, there is only 15.4% of papers that say that the data are available at a publicly accessible location. 

It is important to remember that these results apply to one of the most progressive groups of journals with respect to open data. In many other publications, the proportion of manuscripts that link to openly accessible data sources is likely to be much smaller.

Let’s move on to using the third access model: searching in repositories for data that we think may be interesting. There are a lot of different repositories; some are very focused on one specific area and very dedicated to high quality control of the data hosted there, and other repositories are very broad with varied quality.

One of the major repositories that I would encourage you to look at are Dryad and FigShare, as they are where most journal articles that link to data upload their datasets.

Let’s look at FigShare and search for diabetes-related results. As you will probably see, this search brings up a lot of datasets, but it is not often immediately clear what the dataset includes. You would have to go through them one by one to know if they are relevant and the data you are looking for, if you had a pre-defined research question in mind.

There is another disadvantage to this way of linking datasets to publications. Let’s imagine that you have obtained access to an open database (e.g., the NHANES data). You download the data from the internet and complete your analyses. When you want to publish the paper, the journal requests that you include the data your analyses are based on. So, what should you do? Should you just link to the original source of the NHANES data, and say that others can obtain it there? Or should you make a copy of the data with all the cleaning, processing, and analysis steps that you have conducted, and upload a partial copy of the data containing only the selected observations and variables actually used to generate the tables that are in your paper? 

This decision depends on whether you view the data access principles mostly with regard to replication within the confines of this specific analysis, or if you view access to data as part of a far wider set of aims that should enable other researchers to use open data for purposes other than just checking the specific details of your analyses.

In the first case, it would probably be easiest for both the readers and the researchers to publish the selected and processed dataset used for your specific paper. However, this very much limits the usefulness of this shared dataset. If you wanted to enhance the wide re-use of the data, the second option would be preferable, but it would need to be accompanied by publication of the full syntax that is needed to download, process, and analyse the data. If that code is not made available, it would not be possible to use the linked data to check the analyses made in that specific paper. 

Unfortunately, you will often see that all that is published or linked to, is a cut down and processed version that is specific to only one paper. As mentioned, this is only useful for narrow sense replication, and not for reusability. 

Another problem is that the metadata is often missing. Like we saw before, metadata refers to all the information that tells you what each variable means and how it was obtained/processed. A professionally-managed cohort should have all this documentation, but unfortunately, you will often see that the selected versions of datasets published alongside papers do not include reference to all the metadata, and that you have to then search for all of that separately. This is another reason why it is preferable to link to the original data source, making sure that you publish all the code that is needed to process it.

Dryad is similar, although it can be a little bit better in terms of providing a good workflow for you to upload a dataset, which encourages you to provide the relevant metadata and full data documentation. It also allows you to obtain a Digital Object Identifier (DOI) for a published dataset. A DOI is effectively a reference that other people can use to refer to your published dataset. This encourages a development that we will hopefully see a lot more of in the future: researchers publishing well-documented data products, not just as background data to a paper but as independent research outputs. 

Then, there are collections. For instance, there is somebody who has made this GitHub repository with a list of awesome public datasets. There is a massive amount of data on GitHub, but again, the problem is that it is very difficult to find exactly what you are looking for.

Specific to Denmark, there is the Danish Data Archive. This is a part of the Danish National Archives and is a government service that stores data of all types that people believe is important to conserve long-term. This sometimes includes individual level data from studies that have been concluded. As a researcher, you can register your study database with the Danish Data Archive along with any relevant metadata and specify if the data should be made immediately accessible or if it should be locked for a certain number of years. From that point on, the archive will ensure that the data is kept and made accessible under the conditions that the data owner specified. So, if you are looking for Danish data, you can search the Data Archive directly and sometimes find interesting or relevant data along with a description. 

An example of a repository for a very specific and narrow research field is for MRI and functional MRI data. It documents several data sources ranging from small to very large, and the datasets are generally very well documented. The datasets are very large, so if you are working in the field, this repository would give you access to terabytes of research data you can use.

Now, let’s assume that you have found a dataset that you want to use. There is one further important step you must take before you can get started: checking under which license the dataset has been made available. The fact that data is open, accessible, and downloadable does not always mean that you can use it for any purpose.

The first important distinction is whether the data has a data owner. If data (or an image, music, text, or software) has no owner, it means that it is in the public domain. This means that nobody has copyright on the data and that you can use it for any purpose. This is the case if the data owner has explicitly placed the dataset in the public domain by relinquishing all their rights over it, or if it is in the public domain by law (either because it is older than a certain number of years after the creator’s death/date of creation), or because it is created by a public official in some countries. Rules related to copyright vary in different countries but are harmonised within the EU.

If the data (or any other ‘work’) is not explicitly in the public domain, it means it has an owner who can decide under which conditions to allow access/use. This is described in a license. A licence is like a contract between the data owner and the data user, specifying what the data user is allowed to do under which conditions. Licenses can be bespoke (i.e., specifically written by the data owner for that dataset) or general. In order to make data sharing and open data use easier, several organisations have created general licences that a data owner can choose in order to allow users to use their data without placing it in the public domain.

A good example is Creative Commons (CC). They have created several licenses at increasing levels of openness that data owners can choose to publish their data (or works) if they want people to use it without payment. There are four key components to CC licenses: attribution, non-commercial use, no derivatives, and share alike.

Attribution (BY) means that you need to reference the source and the data owner if you use the data (or the work). Non-commercial use (NC) means that you are only allowed to use the data (or the work) for non-commercial purposes (i.e., you are not allowed to charge for whatever you produce based on that data). No derivatives (ND) means that you are not allowed to create derivative works, in that you cannot alter/modify or wrangle (e.g., merge, select, or subset) the work, and have to use it exactly in the way it was provided. Finally, there is share alike (SA), which means that you are allowed to create derivative works, but if you share them, you have to share them with the same type of licence as the one you got for the components.

These components can be applied in several combinations. The most restrictive combination is CC BY-NC-ND. If you join up all the conditions, you will see that any dataset made available under this license would be virtually unusable for open and reproducible research. The ND part, specifically, would not allow you to make selections of participants or to calculate a BMI from height and weight, as these would be derivatives of the original dataset. This would apply to any licence that includes the ND clause. The SA part is also quite restrictive as it means that you can create a derivative work (your manuscript) but you can only publish it with the same license. The NC clause would prevent you from publishing in a pay-walled journal as this would mean that commercial benefit is derived from the data.

So, if you are looking at a dataset, be sure to look for the license attached. Look for CC0 or CC-BY. CC0 means that there are no conditions attached. CC-BY means that all you need to do is provide attribution (i.e. a reference) to the source. If you use a CC-BY dataset, please remember to do that!

If you are the data owner and are considering which licence you should choose for your data before publishing it, make sure you don’t make the licence too restrictive. Restricting your licence too much will prevent many very relevant use cases.

Creative Commons is not the only type of license that can be used in open research. Some licenses specifically designed for data are being created (Open Data Commons - ODC licenses) and there are other ‘open’ licences such as the GNU and MIT licences, although these are generally mostly used for open source software rather than for data.

To summarise, we have seen that open data is only a part of the wider Open Science universe and that open data should ideally be FAIR but that this is often only partially the case.  We must pay importance to the availability and quality of metadata, both when we look for open data and when we are developing our own open data. We have seen that there are many ways of finding open data and that unfortunately none of these ways is yet ideal. Finally, we have discussed that open data generally still has a data- owner and that you should be very aware of the conditions that the data licence sets for how you can use it.

To conclude, I think we can say that we have started on the right path towards a situation where research data is open, but that we still have a long way to go.

## Collaboration and Teamwork

To be transcribed.

## The Era of Reproducible and Open Science

To be transcribed.
