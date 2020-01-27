
# Introduction to Reproducible Research in R course <img src="images/apple-touch-icon.png" align="right" height=140/>

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Description

Reproducibility and open scientific practices are increasingly being requested
or required of scientists and researchers, but training on these practices has 
not kept pace. This course intends to help bridge that gap and covers the
fundamentals and workflow of data analysis in R.

This repository contains the lesson, lecture, and assignment material for the
course, including the website source files and other associated course
administration files. 

For more detail on the course, check out the [syllabus](https://r-cubed.rostools.org).

## Instructional Design

The lectures and lessons in this course are designed to be presented primarily
with a participatory live-coding approach. This involves an instructor typing
and running code in [RStudio](https://www.rstudio.com/) in front of the class,
while the class follows along using their own computers. Challenges are
interspersed in the lesson material, allowing participants to collaboratively
work on smaller coding problems for a few minutes. All lesson materials are
provided ahead of time on the course website for participants to refer to during
lectures.

Throughout the course, participants undertake a group project, wherein they
attempt to address a scientific question by applying techniques learned over the
course to a (preferably open) dataset. The assignment is primarily code-based
and is designed to be completed in RStudio using the R Markdown format.

## Lesson content

The teaching material is found mainly in the main project folder:

- `index.Rmd`: Contains the syllabus and the schedule files.
- Files starting with a number: 
Contains the code-along teaching material, as well as
associated links to the lecture slides. 
- `slides/`: The lecture slides are rendered into HTML slides using
the [xaringan] package. 

The website is generated from [bookdown], 
so follows the file and folder structure
conventions from that package.

[xaringan]: https://github.com/yihui/xaringan
[blogdown]: https://bookdown.org/yihui/bookdown/

## Installing necessary packages

Packages used and depended on for this course are included in the `DESCRIPTION`
file. To install the packages, run this function in the root directory (where
the `r-cubed.Rproj` file is located:

```r
# install.packages("remotes")
remotes::install_deps()
```

## Contributing

If you are interested in contributing to the course material, please refer to
the [contributing guidelines](CONTRIBUTING.md). Please note that the
'rqawr-rcourse' project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you agree to
abide by its terms.

## Acknowledgements

Much of the lesson material was taken and modified from multiple sources (most
of which I've created, been involved in, or contributed to), including:

- [UofTCoders Reproducible Quantitative Methods for EEB](https://uoftcoders.github.io/rcourse/) 
(which I helped develop and is the inspiration and basis for this course)
- [Software and Data Carpentry](https://carpentries.org/) workshop material
- [UofTCoders material](https://uoftcoders.github.io/studyGroup/lessons/)
and [AU CRU material](https://au-cru.github.io/site/material/),
from the peer led and contributed lessons of each
- [Reproducible Quantitative Methods](https://cbahlai.github.io/rqm-template/)
course template

Most of the material comes from a course I taught to the Danish Diabetes Academy 
in March, 2019:
[*"Reproducible Quantitative Methods: Data analysis workflow using R"*](https://v1--dda-rcourse.netlify.com/).

### Contributions

Current contributors are Luke Johnston and Daniel Witte. Past contributors were
João Santiago, Anna Schritz. Omar Silverman also proofread and provided feedback
on the material for several sessions.

Specific contributions were:

- Luke Johnston: Brainstormed most of the course material and structure; set up
the website; organized and coordinated the course; wrote, prepared, and taught
most of the code-along sessions, as well as several lectures.
- Daniel Witte: Participated in brainstorming on the course structure and
laytout; prepared and taught most of the lectures.
- João Santiago: Taught and edited the R Markdown code-along session material.
- Anna Schritz: Taught and edited the Data Management and Wrangling code-along
session material.

<!--
### How to cite the material

TODO: Update this after course

Please cite the material as:

> Luke W Johnston, Daniel R Witte, João Santiago, Anna Schritz. Reproducible
Quantitative Methods: Data analysis workflow using R. March 2019.
doi:[10.5281/zenodo.2603311].

[10.5281/zenodo.2603311]: https://doi.org/10.5281/zenodo.2603310

Or as BibTeX:

```
@misc{luke_w_johnston_2019_2603311,
  author       = {Luke W Johnston and
                  Daniel R Witte and
                  João Santiago and
                  Anna Schritz},
  title        = {{Reproducible Quantitative Methods: Data analysis 
                   workflow using R}},
  month        = mar,
  year         = 2019,
  doi          = {10.5281/zenodo.2603311},
  url          = {https://doi.org/10.5281/zenodo.2603311}
}
```
-->
