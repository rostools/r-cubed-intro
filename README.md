# r-cubed: An Introductory Workshop on Modern Data Analyses and Workflows for Reproducible Research in R <img src="images/apple-touch-icon.png" align="right" height=100/>

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4520016.svg)](https://doi.org/10.5281/zenodo.4520016)

## Description

Reproducibility and open scientific practices are increasingly being requested
or required of scientists and researchers, but training on these practices has 
not kept pace. This course intends to help bridge that gap and covers the
fundamentals and workflow of data analysis in R.

This repository contains the lesson, lecture, and assignment material for the
course, including the website source files and other associated course
administration files. 

For more detail on the course, check out the [syllabus](https://r-cubed.rostools.org/syllabus.html).
For re-using and learning more about the course, check out our [paper](paper.md)
describing it.

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

- `index.Rmd`: Contains the overview of the course.
- `00-syllabus.Rmd`: Contains the syllabus and the schedule files.
- Files starting with a number: 
Contains the code-along teaching material, as well as
associated links to the lecture slides. 
- `slides/`: The lecture slides are rendered into HTML slides using
the [xaringan] package. 

The website is generated from [bookdown], 
so it follows the file and folder structure
conventions from that package.

[xaringan]: https://github.com/yihui/xaringan
[bookdown]: https://bookdown.org/yihui/bookdown/

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
project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you agree to
abide by its terms.

## Acknowledgements

Much of the lesson material was taken and modified from multiple sources (most
of which Luke W. Johnston has created, been involved in, or contributed to), including:

- [UofTCoders Reproducible Quantitative Methods for EEB](https://uoftcoders.github.io/rcourse/) 
(which I helped develop and is the inspiration and basis for this course)
- [Software and Data Carpentry](https://carpentries.org/) workshop material
- [UofTCoders material](https://uoftcoders.github.io/studyGroup/lessons/)
and [AU CRU material](https://au-cru.github.io/),
from the peer led and contributed lessons of each
- [Reproducible Quantitative Methods](https://cbahlai.github.io/rqm-template/)
course template

Most of the material comes from a course we taught for the Danish Diabetes Academy 
in March, 2019:
[*"Reproducible Quantitative Methods: Data analysis workflow using R"*](https://v1--dda-rcourse.netlify.com/).

### Contributions

Contributors for [version 1](https://v1--dda-rcourse.netlify.app/) were:

- Luke Johnston: Brainstormed most of the course material and structure; set up
the website; organized and coordinated the course; wrote, prepared, and taught
most of the code-along sessions, as well as several lectures.
- Daniel Witte: Participated in brainstorming on the course structure and
laytout; prepared and taught most of the lectures.
- João Santiago: Taught and edited the R Markdown code-along session material.
- Anna Schritz: Taught and edited the Data Management and Wrangling code-along
session material.
- Omar Silverman (helper) proofread and provided feedback on the material for several
sessions.

Specific contributions for version 2 (this repository) were:

- Luke Johnston: Coordinated the course, developed the material,
set up the website, and taught multiple sessions.
- Daniel Witte: Prepared and taught most of the lectures.
- Helene Baek Juel: Edited and taught the Data Visualization code-along session material,
as well as reviewed multiple other sections.
- Bettina Lengger: Edited and taught the Data Management and Wrangling code-along
session material, as well as reviewed multiple other sections.

### How to cite the material

Please cite the material as:

> Luke W. Johnston, Helene Bæk Juel, Bettina Lengger, & Daniel R. Witte. (2020,
June). rostools/r-cubed: Reproducible Research in R - An introductory workshop
on modern data analyses and workflows (Version v2.0). Zenodo.
http://doi.org/10.5281/zenodo.3921894

Or as BibTeX:

```
@misc{luke_w_johnston_2020_3921894,
  author       = {Luke W. Johnston and
                  Helene Bæk Juel and
                  Bettina Lengger and
                  Daniel R. Witte},
  title        = {{rostools/r-cubed: Reproducible Research in R - An 
                   introductory workshop on modern data analyses and
                   workflows}},
  month        = jun,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {v2.0},
  doi          = {10.5281/zenodo.3921894},
  url          = {https://doi.org/10.5281/zenodo.3921894}
}```
