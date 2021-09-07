# Want to contribute? Great! :tada: 

There are a few ways in which you can contribute:

- Participating in the discussions on issues.
- Adding to lesson material.
- Instructing a lesson or helping out.

## Participating in issue discussions :thought_balloon: :question:

Helping to contribute can be as simple as giving feedback, suggestions, or thoughts
about a topic or issue. You'll need a GitLab account to add your comments on
the course development in the [`r-cubed` repository](https://gitlab.com/rostools/r-cubed/-/issues). 
In particular, check the
[`Brainstorm`](https://gitlab.com/rostools/r-cubed/issues?label_name%5B%5D=Brainstorm)
label to find topics that are specifically to get your feedback and thoughts. As 
always, make sure to adhere to the [Code of Conduct](CODE_OF_CONDUCT.md).

## Adding to or editing lesson material :pencil: :computer:

The lesson material and website are created using [bookdown](https://bookdown.org/yihui/bookdown/),
which renders the R Markdown documents and converts the source material into 
a static website. A few things to consider when contributing to the lesson 
material:

1. All lesson material that contains R code chunks needs to be in R Markdown
format (`.Rmd`).
1. Every lesson "chapter" starts with and has only one first level "header" (`#`).
3. Lessons include a mix of code chunks and text, organized using Markdown
headers.
4. Participants should be able to follow the content of the lesson from the
text alone; i.e. the file should contain _all_ conceptual explanations.
5. We teach the *[tidyverse][tidyverse] way of using R*, meaning we use
packages like dplyr, tidyr, rmarkdown, ggplot2, and so on. This also means making
use of the pipe `%>%` operator.
6. We follow the tidyverse [*way of writing and styling R code*](https://style.tidyverse.org/).

Anyone can contribute to the course repository through Git and 
[GitLab](https://gitlab.com/) by creating a 
[new Issue](https://gitlab.com/rostools/r-cubed/-/issues/new)
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
4. Push the edits on that branch to the course repository. Note that this assumes you have
been added to the repository as a contributor. Otherwise, you'll need to make a 
[fork](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork)
of the repository first.
5. Submit a merge request of the branch into the main branch.
7. If you receive feedback on your pull request, make further commits to the
branch on your cloned local copy. These will automatically be added to your merge
request after you commit and push.

*If you are creating slides*, use the R Markdown format [xaringan](https://github.com/yihui/xaringan).

Making videos (on Linux) is done using [Peek](https://github.com/phw/peek) (setting the 
window size to 1280x720),
[OpenShot](https://www.openshot.org/) (to edit the video if necessary),
and the below command to reduce the video file size:

```
ffmpeg -i input.mp4 -crf 28 output.mp4
```

### (Re-)Building the website

In order to build the website, you need to have the dependent packages installed.
Packages used and depended on for this course are included in the `DESCRIPTION`
file. To install the packages, run this function in the root directory (where
the `r-cubed.Rproj` file is located:

```r
# install.packages("remotes")
remotes::install_deps()
```

To re-build the slides from the R Markdown source in `slides/` run the
`R/build-slides.R` script:

```r
source("R/build-slides.R")
```

To re-build the website from the source R Markdown files, either hit `Ctrl-Shift-B`
while in the RStudio `r-cubed.Rproj` Project or run:

```r
source("_build.R")
```

## Teaching in class :information_desk_person: :speech_balloon:

More detailed instructions and guidance on teaching or helping is found
in the [For Instructors](https://r-cubed.rostools.org/for-instructors.html)
section of the website.

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
