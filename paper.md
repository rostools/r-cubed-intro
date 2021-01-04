---
title: 'r-cubed: Guiding the overwhelmed biologist from random wrangling to reproducible research in R'
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

The capacity to generate massive amounts of biological
data continues to increase with each year. This comes with not only the huge volume
of data but also a greater need for the skills and knowledge necessary to process
and analyze this data [@Brownson2015]. Tightly coupled to this increasing need for computational
skills in science is an increasing demand that scientific studies be reproducible
and that the methods and analytic process to be open and transparent [@Watson2015].

Unfortunately, training in modern computational skills has not kept pace and
this is especially evident in biomedical research. The computational learning
module we've developed and describe below is aimed at bringing awareness to and
improving skills in R, reproducibility, and open science for researchers in the
field of diabetes research. 

The learning modules are structured as a three-day workshop, with five
sub-modules. We've designed it specifically as an open educational resource that
other instructors might make use of directly or modify for their own lessons, 
or for learners to use on their own or as a reference after participating in the
workshop. All content are available for re-use under CC-BY and MIT Licenses.

# Statement of Need

Reproducibility is a key component to verifying scientific findings.
Unfortunately, the reproducibility of scientific studies is largely unknown 
[@Considine2017;@Leek2017],
as researchers are unaware of, have no training in, or don't have incentives to
conduct reproducible research. Improving reproducibility requires not
only an awareness, but also training in multiple areas that include 
the statistical analysis, version control, project management
(of files), and reproducible reporting. The need for training in these skills is
critical to tackling these modern demands.

The `r-cubed` learning module provides training in reproducibility, open
science, and collaboration by teaching Git, GitHub, R Markdown, and an introduction to data
wrangling and visualization in R. While there are other resources for learning R
and Git [@Bryan;@ChesterIsmay2019;@Lee2019], this module includes a greater
integration and emphasis on reproducibility and the general workflow around
doing data analysis, as well as instructions targeted to other instructors
to assist with re-use of the material. Finally, this module also focuses on
experiences and needs of those conducting biomedical research, which is an area that
currently lacks enough training for these skills. The authors, all of whom
work or have worked in biomedical research, used their experience when they
created and shaped the learning content.

The learning module was specifically designed with **re-use and adoption** in mind.
Both [*Section 1*](https://r-cubed.rostools.org/#welcome) and 
[*Appendix C*](https://r-cubed.rostools.org/for-instructors.html) give more
details on how this module can be re-used.

The specific **target audience** for this learning resource is described in 
[*Section 1.1*](https://r-cubed.rostools.org/index.html#target-audiences). Briefly,
we target the resource to *learners* to use during the workshop and also afterwards, 
*instructors of the workshop* to use as a reference while teaching, and
those *interested in teaching* but don't have the skills or knowledge to build
their own workshop. The target learner of the workshop is described in 
[*Section 2.1*](https://r-cubed.rostools.org/syllabus.html#is-this-course-for-you).

# Description of Learning Modules

The **learning objectives** of this module are to give a broad introduction to reproducible
research practices, in the context of RStudio and GitHub.
A detailed description of the learning objectives is found in the syllabus in
[*Section 2*](https://r-cubed.rostools.org/syllabus.html).
Briefly, upon completing the learning module, learners are expected to
have: 

1. A basic level of proficiency in using the R statistical programming language.
2. Improved data and code literacy.
3. The ability to conduct a modern and reproducible data analysis.

The learning module encompasses *five sub-modules* (see Table 1), with each
sub-module representing about a half-day of lessons.
A general schedule is given in 
[*Section 2.2*](https://r-cubed.rostools.org/syllabus.html#general-schedule) and 
details on how these lessons can be used or structured is found in
[*Appendix C: For Instructors*](https://r-cubed.rostools.org/for-instructors.html).

|Sub-module|Description|
|---|---|
|Management of R Projects|Introducing RStudio and R Projects; using packages, data, and file paths; and learning how to troubleshoot|
|Version Control with Git|Using Git with RStudio; synchronizing Git with GitHub; dealing with file conflicts; and using Git as a collaboration tool|
|Data Management and Wrangling|Introducing good working practices; loading data and packages in to RStudio; and transforming data using select, rename, filter, arrange, and split-apply-combine functions|
|Analytically Reproducible Documents|Introducing R Markdown and inserting code, tables, and figures in R Markdown|
|Data Visualization|Plotting various combinations of variables and using formatting effectively|

Table: An overview of the five sub-modules that form the `r-cubed` learning module.

Sub-modules are designed to be completed as a series in the order given, since
concepts taught in later sub-modules are dependent on earlier lessons.
Principles and applications of reproducibility are highlighted
throughout sub-modules. Sub-modules are accompanied by three stand-alone
lectures (and one introduction lecture) aimed at drawing together
reproducibility and RStudio skills (see
[*Section 6: Lecture Slides*](https://r-cubed.rostools.org/lecture-slides.html)).

## Instructional Design

The module is designed for in-person settings, where the instructional design uses a
combination of teaching methods (see Table 2). Content taught using the methods
below are described in 
[*Section 1: Welcome!*](https://r-cubed.rostools.org/index.html) 
We also incorporate the use of sticky notes, as pioneered by the 
[Carpentries](https://swcarpentry.github.io/swc-releases/2017.02/instructor-training/15-practices/),
to help with troubleshooting and to have a smoother experience overall.

|Method|Description|Advantages|
|---|---|---|
|Participatory live coding lessons|Participants join with instructors to write and troubleshoot code step-by-step|Encourages participants to actively engage with the material, to build muscle memory through typing, and to learn how to handle mistakes, rather than passively observing content|
|Independent reading of specific sections|Participants read more concept-heavy content at their own pace|Including reading activities provides diverse learning opportunities aside from listening skills, can be advantageous for non-native English speakers, and can slow the pace of learning to enhance retention|
|Completion of brief exercises|Exercises are interspersed throughout the live-coding sessions to complement the content|Hands-on, practical exercises help reinforce what was previously learned and provides an opportunity to work through code at the learners' own pace|
|Group assignment work|Participants collaborate with others to apply skills taught over the workshop in terms of cleaning, manipulating, analyzing, and visualizing data|Helps to reinforce learning by applying the skills and knowledge to a new problem and task, thus building confidence in using the skills|

Table: Description of pedagogical methods used throughout the workshop.

[*Appendix C: For Instructors*](https://r-cubed.rostools.org/for-instructors.html)
further describes the teaching approach that instructors can adopt in order to
maximize learning outcomes.

## Experience of use in teaching and learning situations

The learning module has to date been delivered three times as 2-3 day workshops.
Instructors were graduate students or postdoctoral researchers from diverse
fields within diabetes research. Most of the instructors or helpers had
recently learned R themselves or were still in the novice or early intermediate
phase of experience. This was intentional, as it is easier to relate to the 
challenges and experiences that the learners will face when instructors have
recently experienced this learning themselves. In our experience, a ratio of about 4-6
learners for every instructor/helper provided the smoothest experience during
the workshop.

Workshop participants were mostly PhD and post-doctoral researchers in the field
of diabetes, most of whom were beginners in terms of their exposure to R and
understanding of reproducibility. Participants were grouped into 
four to five people, in order to facilitate the group assignment work later in
the workshop. 

After each day, participants gave feedback on the structure and content of the
workshop through a Google Forms survey. This anonymous feedback is saved in the
repository and is used to improve and enhance `r-cubed`, ensuring its
continual improvement and relevance to beginners in the field of biomedical data analysis.

# Story of the Project

The learning material from this workshop was built and taught in small
pieces over many years by Luke Johnston. The initial rationale for creating the
material was largely due to the near complete lack of relevant training in 
academic settings on data management, coding and general workflows in data
analysis, version control, and project management of scientific research. The teaching material was compiled in a more structured form when the Danish Diabetes Academy hosted the workshop,
and was heavily updated and revised by the current author team. We greatly enjoy
teaching the workshop and, based on the feedback from surveys, the participants 
do too!

# Acknowledgements

We want to specifically thank the Danish Diabetes Academy for hosting,
organizing, and providing a space to build and grow this workshop. We also thank
the first instructors and helpers of the course (João Santiago, Anna Schritz,
Omar Silverman) for their early feedback during the first version of the course.

# References
