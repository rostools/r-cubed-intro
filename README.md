# r-cubed: An Introductory Workshop on Modern Data Analyses and Workflows for Reproducible Research in R <img src="images/apple-touch-icon.png" align="right" height=100/>

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3921893.svg)](https://doi.org/10.5281/zenodo.3921893)
[![status](https://jose.theoj.org/papers/21c31bd9b6cd58e154de3f7b44d527b2/status.svg)](https://jose.theoj.org/papers/21c31bd9b6cd58e154de3f7b44d527b2)

## Description

Reproducibility and open scientific practices are increasingly being requested
or required of scientists and researchers, but training on these practices has 
not kept pace. This course intends to help bridge that gap and covers the
fundamentals and workflow of data analysis in R.

This repository contains the lesson, lecture, and assignment material for the
course, including the website source files and other associated course
administration files. 

For more detail on the course, check out the [welcome page](https://r-cubed.rostools.org/)
and the [syllabus](https://r-cubed.rostools.org/syllabus.html).
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

## Contributing and re-use

If you are interested in contributing to the course material, please refer to
the [contributing guidelines](CONTRIBUTING.md). If you want guidelines on how
to teach or be a helper with this material, check out the 
[For Instructors](https://r-cubed.rostools.org/for-instructors.html)
section of the web content.
Please note that the project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By contributing to or being involved in this project, 
you agree to abide by its terms.

For details of the license and acknowledgement of content used from sources,
see the [license page of the website](https://r-cubed.rostools.org/license.html).
A list of contributors to each version and their roles can be found on the 
[website](https://r-cubed.rostools.org/index.html#contributors).

### How to cite the material

Please cite the material as:

> Johnston, Luke W., Juel, Helene Bæk, Lengger, Bettina, Witte, Daniel R.,
Chatwin, Hannah, Christiansen, Malene Revsbech, & Isaksen, Anders Aasted. (2020,
June 29). rostools/r-cubed: Reproducible Research in R - An introductory
workshop on modern data analyses and workflows. Zenodo.
https://doi.org/10.5281/zenodo.3921893

Or as BibTeX:

```
@misc{johnston_luke_w_2020_3921893,
  author       = {Johnston, Luke W. and
                  Juel, Helene Bæk and
                  Lengger, Bettina and
                  Witte, Daniel R. and
                  Chatwin, Hannah and
                  Christiansen, Malene Revsbech and
                  Isaksen, Anders Aasted},
  title        = {{rostools/r-cubed: Reproducible Research in R - An 
                   introductory workshop on modern data analyses and
                   workflows}},
  month        = jun,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {v3.0},
  doi          = {10.5281/zenodo.3921893},
  url          = {https://doi.org/10.5281/zenodo.3921893}
}
```
