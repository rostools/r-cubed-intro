
# Reproducible Quantitative Analyses and Workflows using R

[![Netlify Status](https://api.netlify.com/api/v1/badges/4c7d7232-e173-491a-abf7-c818c290bade/deploy-status)](https://app.netlify.com/sites/rqawr-course/deploys)
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

For more detail on the course, check out the [syllabus](https://rqawr-rcourse.lwjohnst.com).

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

The teaching material is found in three locations:

- `/content/home/`: Contains the syllabus and the schedule files.
- `/content/course/`: Contains the code-along teaching material, as well as
associated links to the lecture slides. In order to work with the Academic
[blogdown] theme, R Markdown files must have the extension `.Rmarkdown`, which
create the resulting `.markdown` files when rendered.
- `static/slides/`: The lecture slides are rendered into HTML slides using
the [xaringan] package. Since slides are not rendered using [blogdown], they
must be placed in the `static/` folder.

[xaringan]: https://github.com/yihui/xaringan
[blogdown]: https://bookdown.org/yihui/blogdown/

## Installing necessary packages

Packages used and depended on for this course are included in the `DESCRIPTION`
file. To install the packages, run this function in the root directory (where
the `rqawr-rcourse.Rproj` file is located:

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

The name of the course derives from an open source [educational training
template](https://cbahlai.github.io/rqm-template/) developed by 
[Dr. Christie Bahlai](https://bahlailab.org/) during her fellowship with 
[Mozilla Science Lab](https://science.mozilla.org/).

Much of the lesson material was taken and modified from multiple sources (most
of which I've created, been involved in, or contributed to), including:

- [UofTCoders Reproducible Quantitative Methods for EEB](https://uoftcoders.github.io/rcourse/) 
(which I helped develop and is the inspiration and basis for this course)
- [Software and Data Carpentry](https://carpentries.org/) workshop material
- [UofTCoders material](https://uoftcoders.github.io/studyGroup/lessons/)
from the peer led and contributed lessons
- [Aarhus University Open Coders material](https://au-oc.github.io/content/)

Most of the material comes from a course I taught to the Danish Diabetes Academy 
in March, 2019:
[*"Reproducible Quantitative Methods: Data analysis workflow using R"*](https://dda-rcourse.lwjohnst.com/).

### Contributions

Main contributors were Luke Johnston, Daniel Witte, João Santiago, Anna Schritz.
Omar Silverman also proofread and provided feedback on the material for several sessions.

Specific contributions were:

- Luke Johnston: Brainstormed most of the course material and structure; set up
the website; organized and coordinated the course; wrote, prepared, and taught
most of the code-along sessions, as well as several lectures.
- João Santiago: Taught and edited the R Markdown code-along session material.
- Anna Schritz: Taught and edited the Data Management and Wrangling code-along
session material.
- Daniel Witte: Participated in brainstorming on the course structure and
laytout; prepared and taught most of the lectures.

### How to cite the material

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
