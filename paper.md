---
title: 'r-cubed: Guiding the overwhelmed researcher from random wrangling to reproducible research in R'
tags:
  - R
  - rstats
  - reproducible-research
  - reproducibility
  - introduction
  - workflow
  - open education
  - open science
authors:
  - name: Luke W. Johnston
    orcid: 0000-0003-4169-2616
    affiliation: 1
  - name: Hannah Chatwin
    orcid: 0000-0001-7248-8568
    affiliation: 3
  - name: Malene Revsbech Christiansen
    orcid: 0000-0002-9772-3576
    affiliation: 4
  - name: Bettina Lengger
    orcid: 0000-0001-9997-7011
    affiliation: 5
  - name: Helene Baek Juel
    orcid: 0000-0002-5763-8545
    affiliation: 4
affiliations:
 - name: Steno Diabetes Center Aarhus, Aarhus, Denmark
   index: 1
 - name: Aarhus University, Aarhus, Denmark
   index: 2
 - name: University of Southern Denmark, Odense, Denmark
   index: 3
 - name: Novo Nordisk Foundation Center for Basic Metabolic Research, University of Copenhagen, Copenhagen, Denmark
   index: 4
 - name: Novo Nordisk Foundation Center for Biosustainability, Technical University of Denmark, Kongens Lyngby, Denmark
   index: 5
date: 5 November 2020
bibliography: paper.bib
---

# Summary

The amount of biological data created increases every year, 
and with it the need for the skills and knowledge to process
and analyze data [@Brownson2015]. With the open science movement
on the rise, methods and analytic process are also expected to be open and
transparent and scientific studies to be reproducible [@Watson2015].

Unfortunately, training in modern computational skills has not kept pace, which
is particularly evident in biomedical research. The computational learning
module we have developed and described below aims to bring awareness to and
improve skills in R, reproducibility, and open science for researchers in the
field of diabetes research.

The `r-cubed` learning module is structured as a three-day workshop, with five
sub-modules. We have specifically designed the module as an open educational
resource that instructors can make use of directly or modify for their own
lessons, or learners can use independently or as a reference after participating
in the workshop. All content is available for re-use under CC-BY and MIT
Licenses.

# Statement of Need

Reproducibility is a key component to verifying scientific findings.
Unfortunately, it is largely unknown how reproducible scientific studies
currently are [@Considine2017;@Leek2017], as researchers are unaware of, have no
training in, or don't have incentives to conduct reproducible research.
Improving reproducibility requires an awareness and training in multiple areas,
including version control, project and data management, and reproducible
reporting alongside statistical analysis. Training in these skill areas is
critical to tackling the modern demands of reproducibility.

The learning module provides training in reproducibility, open science, and
collaboration, by teaching introductions to Git, GitHub, R Markdown, and data
wrangling and visualization in R. While other resources for learning R and Git exist
[@Bryan2019;@ChesterIsmay2019;@Lee2019], this module places greater emphasis on
reproducibility and workflow for data analysis, as well as instructions targeted
to other instructors to assist with re-use of the material. This module is also
based on the experiences and needs of biomedical researchers, given that it is
an area that currently lacks sufficient training for these skills. The authors,
all of whom work or have worked in biomedical research, used their experience in
creating and shaping the content.

The learning module was specifically designed with **re-use and adoption** in mind.
Both [*Section 1*](https://r-cubed.rostools.org/#welcome) and 
[*Appendix C*](https://r-cubed.rostools.org/for-instructors.html) give more
details on how this module can be re-used.

The **target audience** for this learning resource is described in 
[*Section 1.1*](https://r-cubed.rostools.org/index.html#target-audiences).
Briefly, we suggest: *learners* use the material during and after the workshop;
*instructors* use the module as a reference while teaching; and those
*interested in teaching* but limited in knowledge or skills use the content to
build their own workshop. The target learner of the workshop is detailed in
[*Section 2.1*](https://r-cubed.rostools.org/syllabus.html#is-this-course-for-you).

# Description of Learning Modules

The **learning objectives** of this module are to provide a broad introduction
to reproducible research practices, in the context of RStudio, Git, and GitHub. A
detailed description of the learning objectives is found in the syllabus in
[*Section 2*](https://r-cubed.rostools.org/syllabus.html).
Briefly, upon completing the learning module, learners are expected to
have: 

1. A basic level of proficiency in using R, a statistical programming language.
2. Improved data and code literacy.
3. The ability to conduct a modern and reproducible data analysis.

The learning module encompasses *five sub-modules* (Table 1), with each
sub-module representing about a half-day of lessons.
A general schedule is given in 
[*Section 2.2*](https://r-cubed.rostools.org/syllabus.html#general-schedule).  
Details on how these lessons can be used or structured are found in
[*Appendix C: For Instructors*](https://r-cubed.rostools.org/for-instructors.html).

|Sub-module|Description|
|---|---|
|Management of R Projects|Introducing RStudio and R Projects; using packages, data, and file paths; and learning how to troubleshoot.|
|Version Control with Git|Using Git with RStudio; synchronizing Git with GitHub; dealing with file conflicts; and using Git as a collaboration tool.|
|Data Management and Wrangling|Introducing good working practices; loading data and packages into RStudio; and transforming data using select, rename, filter, arrange, and split-apply-combine functions.|
|Analytically Reproducible Documents|Introducing and using R Markdown to insert code, tables, and figures to make a reproducible document.|
|Data Visualization|Plotting various combinations of variables and using formatting effectively.|

Table: An overview of the five sub-modules that form the `r-cubed` learning module.

Sub-modules are designed to be completed as a series in the order given, since
concepts taught in later sub-modules are dependent on earlier lessons.
Principles and applications of reproducibility are highlighted
throughout sub-modules. Sub-modules are accompanied by three stand-alone
lectures (and one introductory lecture) aimed at drawing together
reproducibility and RStudio skills (see
[*Section 6: Lecture Slides*](https://r-cubed.rostools.org/lecture-slides.html)).

## Instructional Design

The module is designed for in-person settings, where the instructional design uses a
combination of teaching methods (Table 2). Content taught using the methods
below are described in 
[*Section 1: Welcome!*](https://r-cubed.rostools.org/index.html). 
We also incorporate the use of sticky notes, as pioneered by the 
[Carpentries](https://swcarpentry.github.io/swc-releases/2017.02/instructor-training/15-practices/),
to help with troubleshooting and to facilitate a positive learning experience overall.

|Method|Description|Advantages|
|---|---|---|
|Participatory live-coding lessons|Participants join with instructors to write and troubleshoot code step-by-step.|Encourages participants to actively engage with the material, to build muscle memory through typing, and to learn how to handle mistakes, rather than passively observing content.|
|Independent reading of specific sections|Participants read more concept-heavy content at their own pace.|Including reading activities provides diverse learning opportunities aside from listening skills, can be advantageous for non-native English speakers, and can slow the pace of learning to enhance retention.|
|Completion of brief exercises|Exercises are interspersed throughout the live-coding sessions to complement the content.|Hands-on, practical exercises help reinforce what was previously learned and provides an opportunity to work through code at the learners' own pace.|
|Group assignment work|Participants collaborate with others to apply skills taught over the workshop in terms of cleaning, manipulating, analyzing, and visualizing data.|Helps to reinforce learning by applying the skills and knowledge to a new problem and task, thus building confidence in using the skills.|

Table: Description of pedagogical methods used throughout the workshop.

[*Appendix C: For Instructors*](https://r-cubed.rostools.org/for-instructors.html)
further describes the teaching approach that instructors can adopt in order to
maximize learning outcomes.

## Experience of use in teaching and learning situations

The learning module has to date been delivered three times as 2-3 day workshops.
Instructors were graduate students or postdoctoral researchers from diverse
fields within diabetes research, of whom most had relatively recently learned R
themselves. Including late-novice or early-intermediate R users as instructors
makes communicating and relating to the learners easier and, we believe, provides
a better learning environment. A ratio of about 4-6 learners for every
instructor/helper has proven to be most effective in past workshops.


Workshop participants were mostly PhD and postdoctoral researchers in the field
of diabetes, most of whom were beginners in terms of their exposure to R and
understanding of reproducibility. Participants were grouped into groups of
4-5 people as part of their group assignment.

After each day, participants gave feedback on the structure and content of the
workshop through a Google Forms survey. This anonymous feedback is saved in the
repository and is used to improve and enhance `r-cubed`, and ensure its
continual improvement, relevance, and beginner-friendliness to biomedical
researchers.

# Story of the Project

The learning material from this workshop was built and taught in smaller
segments over many years by Luke Johnston. The initial rationale for creating the
material was due to the near complete lack of relevant training in 
academic settings on data management, coding and general workflows in data
analysis, version control, and project management of scientific research. The
teaching material was compiled in a more structured form when the Danish
Diabetes Academy hosted the workshop, and was heavily updated and revised by the
current author team. We greatly enjoy teaching the workshop and, based on the
feedback from surveys, the participants do too!

# Acknowledgements

We want to specifically thank the [Danish Diabetes Academy](https://www.danishdiabetesacademy.dk/)
for hosting, organizing, and providing a space to build and grow this workshop.
We also thank the first instructors and helpers of the course (João Santiago,
Anna Schritz, Omar Silverman) for their early feedback during the first version
of the course.

# References
