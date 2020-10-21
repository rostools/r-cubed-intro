# Want to contribute? Great! :tada: 

There are a few ways in which you can contribute:

- Participating in the discussions on issues.
- Adding to lesson material.
- Instructing a lesson.
- Helping during the course.

## Participating in issue discussions :thought_balloon: :question:

Helping to contribute can be as simple as giving feedback or suggestions or thoughts
about a topic or issue. You'll need a GitLab account to add your comments on
the course development in the [`r-cubed` repository](https://gitlab.com/rostools/r-cubed/issues). 
In particular, check the
[`Brainstorm`](https://gitlab.com/rostools/r-cubed/issues?label_name%5B%5D=Brainstorm)
label to find topics that are specifically to get your feedback and thoughts. As 
always, make sure to adhere to the [Code of Conduct](CODE_OF_CONDUCT.md).

## Adding to lesson material :pencil: :computer:

The lesson material and website are created using [bookdown](https://bookdown.org/yihui/bookdown/),
which renders the R Markdown documents and converts the source material into 
a static website. A few things to consider when contributing to the lesson 
material:

1. All lesson material that contains R code chunks needs to be in R Markdown
format (`.Rmd`).
1. Every lesson "chapter" starts with and has only one first level "header" (`#`).
3. Lessons include a mix of code chunks and text, organized using Markdown
headers.
4. Participants should be able to follow the contents of the lesson from the
text alone; i.e. the file should contain _all_ conceptual explanations.
5. We teach the *[tidyverse][tidyverse] way of using R*, meaning we use
packages like dplyr, tidyr, rmarkdown, ggplot2, and so on. This also means making
use of the pipe `%>%` operator.
6. We follow the tidyverse [*way of writing and styling R code*](https://style.tidyverse.org/).

Anyone can contribute to the course repository by two main ways:

1. Using [hypothes.is], a web annotating tool. 
Go to ["Get Started"](https://web.hypothes.is/start/) to give feedback and add
comments directly on this website. This is the easiest approach.
2. Through Git and [GitLab] by creating a [new Issue](https://gitlab.com/rostools/r-cubed-intermediate/-/issues/new)
to make comments and give feedback for the material or via [merge
requests][merge-requests]. This is the harder but preferred approach.

Through the GitLab approach, you can contribute either directly on GitLab
through their editing interface or you can create a clone of the repository and
edit through RStudio. If you go the clone-RStudio route, please use [the GitHub
flow style][github-flow] to manage changes. Here are some steps to follow:

1. [Clone][clone-explanation] the repository to your local computer.
2. In your local copy of this repository, create a new
[branch][branch-explanation] that will address one or two Issues.
3. Make edits to files and content that is specific to only a few Issues.
Smaller changes made as a Merge Request are easier to review and merge than 
bigger changes. The more targeted and specific the changes are, the better.
3. As you make edits, commit your changes to that branch.
4. Push the edits on that branch to the course repository.
5. Submit a merge request of the branch into the master branch.
7. If you receive feedback on your pull request, make further commits to the
branch on your cloned local copy. These will automatically be added to your merge
request after you commit and push.

*If you are creating slides*, use the R Markdown format [xaringan](https://github.com/yihui/xaringan).

Making videos is done using [Peek](https://github.com/phw/peek),
[OpenShot](https://www.openshot.org/),
and the below command to reduce the video file size:

```
ffmpeg -i input.mp4 -crf 28 output.mp4
```

## Teaching in class :information_desk_person: :speech_balloon:

Here are some steps and guidelines when you instruct a class:

- Start by *introducing a bit about yourself* and perhaps why you're interested
in teaching R and data analysis.
- Keep mindful of the time and try to *stay on time*. The lead organizer will be
also be keeping track of time and wave to you to continue on or slow down.
- Try to assume the participants *know as little as possible*. This is actually
quite hard, but just try as best you can. The lead organizer may take notes and
provide feedback after your lesson or clarify concepts to the participants. Try
to (briefly) explain as much aspects as possible of what you are doing,
including how to open RStudio or how to run code (e.g. press `Shift-Enter` in RStudio)
- The majority of the lesson material is *participatory live-coding*, so use of
slides is minimal. The purpose of the course is to *type with the participants*,
to show by doing.
- **Check in with participants**: We distribute coloured sticky notes to each
participant so that they can flag problems with one colour and success with
another colour. Use these indicators to check your pacing and where the
class is at.
- We teach the *[tidyverse][tidyverse] way of using R*, meaning we use
packages like dplyr, tidyr, rmarkdown, ggplot2, and so on. This also means making
use of the pipe `%>%` operator.
- We follow the tidyverse [*way of writing and styling R code*](https://style.tidyverse.org/).
- Be kind, and remember, your words *matter a lot*. Try to avoid words like
"basically", "its just", "as simple as", and so on. This is difficult, but at least
try. :smile:

Note: The lead organizer may provide feedback on your teaching. It isn't
criticism, but rather are areas to improve and become a better teacher!
:smiley_cat:

### More on "Participatory Live-Coding"

Live-coding is a hands-on method of teaching coding to a group in which the
instructor shares their screen with the group and types all commands on their
computer while the group follows along. Live-coding is a very effective teaching
technique: it forces the instructor to go slowly and ensures that participants
get to try out every command being used. It allows learners to experience common
errors themselves and debug them in a supportive environment, to explore
variations on material as they go, and to immediately check their understanding
by trying things hands-on.

Live-coding is a technique used by [Software Carpentry](https://software-carpentry.org/about/). 
Software Carpentry has lots of great resources explaining the why and how of live-coding:

- [10 tips and tricks for instructing and teaching by means of live coding](https://software-carpentry.org/blog/2016/04/tips-tricks-live-coding.html)
- The Software Carpentry [instructor training manual](https://carpentries.github.io/instructor-training/) 
includes many resources about programming education.

## Being a helper :raising_hand: 

Being a helper is fairly simple! When you see a participant with a "help" sticky
on their laptop, go and see what help you can provide! A couple things to review
and to keep in mind when helping. 

- Review the curriculum the instructors will be teaching.
- We teach the [`tidyverse`][tidyverse] way of using R, meaning we use packages
like dplyr, tidyr, rmarkdown, ggplot2, and so on. 
- We follow the tidyverse way of [writing and styling R code](https://style.tidyverse.org/).
- Be kind, and remember, your words and how you help *matter a lot*. They can 
make participants feel better or worse. So be kind, considerate, and understanding!

Before coming to help, we would recommend taking a look at the tidyverse style
guide as well a quick skim through of the [R for Data Science book](https://r4ds.had.co.nz/).

## Code of Conduct

We adhere to a [Code of Conduct](CODE_OF_CONDUCT.md) and by participating, you
agree to also uphold this code.

## Acknowledgements

Parts of the file were modified from [UofTCoders](https://github.com/UofTCoders/studyGroup/blob/gh-pages/CONTRIBUTING.md) 
and [The Carpentries](https://docs.carpentries.org/topic_folders/hosts_instructors/hosts_instructors_checklist.html#instructor-checklist)
contributing guidelines.

[tidyverse]: https://www.tidyverse.org/
[branch-explanation]: https://help.github.com/articles/about-branches/
[clone-explanation]: https://help.github.com/articles/cloning-a-repository/
[github-flow]: https://guides.github.com/introduction/flow/
[glossary]: https://help.github.com/articles/github-glossary/
[merge-requests]: https://docs.gitlab.com/ee/gitlab-basics/add-merge-request.html
