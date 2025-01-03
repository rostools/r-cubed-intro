---
title: "r-cubed: Guiding the overwhelmed scientist from random wrangling to Reproducible Research in R"
tags:
  - R
  - rstats
  - reproducible research
  - reproducibility
  - introduction
  - workflow
  - open education
  - open science
  - data analysis
authors:
  - name: Luke W. Johnston
    orcid: 0000-0003-4169-2616
    affiliation: 1
  - name: Helene Baek Juel
    orcid: 0000-0002-5763-8545
    affiliation: 2
  - name: Bettina Lengger
    orcid: 0000-0001-9997-7011
    affiliation: 3
  - name: Daniel R. Witte
    orcid: 0000-0002-0769-2922
    affiliation: "1,4"
  - name: Hannah Chatwin
    orcid: 0000-0001-7248-8568
    affiliation: 5
  - name: Malene Revsbech Christiansen
    orcid: 0000-0002-9772-3576
    affiliation: 2
  - name: Anders Aasted Isaksen
    orcid: 0000-0001-8457-5466
    affiliation: 4
affiliations:
 - name: Steno Diabetes Center Aarhus, Aarhus, Denmark
   index: 1
 - name: Novo Nordisk Foundation Center for Basic Metabolic Research, University of Copenhagen, Copenhagen, Denmark
   index: 2
 - name: Novo Nordisk Foundation Center for Biosustainability, Technical University of Denmark, Kongens Lyngby, Denmark
   index: 3
 - name: Department of Public Health, Aarhus University, Aarhus, Denmark
   index: 4
 - name: University of Southern Denmark, Odense, Denmark
   index: 5
date: 4 February 2021
bibliography: paper.bib
---

# Summary

The amount of biological data created increases every year, driven largely by
technologies such as high-throughput -omics, real-time monitoring, or high
resolution imaging in addition to greater access to routine administrative data and
larger study populations. This not only presents operational challenges, but
also highlights considerable needs for the skills and knowledge to manage,
process, and analyze this data [@Brownson2015]. Along with the open science movement
on the rise, methods and analytic processes are also increasingly expected to be
open and transparent and for scientific studies to be reproducible
[@Watson2015].

Unfortunately, training in modern computational skills has not kept pace, which
is particularly evident in biomedical research [@Cooper2017;@Attwood2017], where
training tends to focus on clinical, experimental, or wet-lab skills. The
computational learning module we have developed and described below aims to
introduce and improve skills in R, reproducibility, and open science for
researchers in the biomedical field, with a focus on diabetes research.

The `r-cubed` (Reproducible Research in R or R3) learning module is
structured as a three-day workshop, with five sub-modules. We have specifically
designed the module as an open educational resource that: 1) instructors can make
use of directly or modify for their own lessons; and, 2) learners can use
independently or as a reference after participating in the workshop. All content
is available for re-use under CC-BY License.

# Statement of Need

Reproducibility is a key component to verifying scientific findings.
Unfortunately, the reproducibility of scientific studies is difficult to estimate
[@Considine2017;@Leek2017] as researchers may be unaware of, have no
training in, or lack incentives to conduct reproducible research.
Improving reproducibility requires an awareness and training in multiple areas,
including version control, project and data management, and reproducible
reporting alongside the traditional curriculum of statistical analysis. Training in these
skill areas is critical to tackling the modern demands of reproducibility.

The learning module provides training in reproducibility, open science, and
collaboration by teaching introductions to Git, GitHub, R Markdown, and data
wrangling and visualization in R. While other resources for learning R and Git
exist [@Bryan2019;@ChesterIsmay2019;@Lee2019], this module places a greater
emphasis on reproducibility and the general workflow for doing data analysis. It
also includes instructions targeted to other instructors to assist with re-use
of the material. This module is based on the experiences and needs of
biomedical researchers, as it is an area that currently lacks sufficient
training for these skills. The authors, all of whom work or have worked in
biomedical research, used their experience in creating and shaping the content.

The learning module was specifically designed with *re-use and adoption* in mind.
Both the [*Welcome*](https://r-cubed.rostools.org/#welcome) and
[*For Instructors*](https://r-cubed.rostools.org/for-instructors.html) sections give more
details on how this module can be re-used.

The *target audience* for this learning resource is described in
[*Welcome*](https://r-cubed.rostools.org/index.html#target-audiences) page.
Briefly, we suggest: *learners* use the material during and after the workshop;
*instructors of the workshop* use the module as a reference while teaching; and those
*interested in teaching*, but who are still new to the knowledge or skills
themselves, can use the content to build their own workshop. The target learner
of the workshop is detailed in the
[*syllabus*](https://r-cubed.rostools.org/syllabus.html#is-this-course-for-you).

# Description of Learning Modules

The *learning objectives* of this module are to provide a broad introduction
to reproducible research practices, in the context of RStudio, Git, and GitHub. A
detailed description of the learning objectives is found in the
[*syllabus*](https://r-cubed.rostools.org/syllabus.html).
Briefly, upon completing the learning module, learners are expected to have:

1. A basic level of proficiency in using R, a statistical programming language.
2. Improved data and code literacy.
3. The ability to conduct a modern and reproducible data analysis project.
4. Insight into the main challenges impeding open and reproducible research.

The learning module encompasses *five sub-modules* (Table 1), with each
sub-module representing about a half-day of lessons.
A general schedule is given in the
[*Schedule*](https://r-cubed.rostools.org/schedule.html) section.
Details on how these lessons can be used or structured are found in
[*For Instructors*](https://r-cubed.rostools.org/for-instructors.html) section.

|Sub-module|Description|
|---|---|
|Management of R Projects|Introducing RStudio and R Projects; using packages, data, and file paths; and learning how to troubleshoot.|
|||
|Version Control with Git|Using Git with RStudio; synchronizing Git with GitHub; dealing with file conflicts; and using Git as a collaboration tool.|
|||
|Data Management and Wrangling|Introducing good working practices; loading data and packages into RStudio; and transforming data using select, rename, filter, arrange, and split-apply-combine functions.|
|||
|Analytically Reproducible Documents|Introducing and using R Markdown to insert code, tables, and figures to make a reproducible document.|
|||
|Data Visualization|Plotting various combinations of variables and using formatting effectively.|

Table: An overview of the five sub-modules that form the `r-cubed` learning module.

Sub-modules are designed to be completed as a series in the order given, since
concepts taught in later sub-modules are dependent on earlier lessons.
Principles and applications of reproducibility are highlighted
throughout sub-modules. Sub-modules are accompanied by three stand-alone
lectures (and one introductory lecture) aimed at drawing together challenges in
reproducibility and the RStudio skills taught during the workshop (see
[*Lecture Slides* section](https://r-cubed.rostools.org/lecture-slides.html)).

## Instructional Design

The module is designed for in-person settings, where the instructional design uses a
combination of teaching methods (Table 2). Content taught using the methods
below are described in the
[*Welcome*](https://r-cubed.rostools.org/index.html) section.
We also incorporate the use of sticky notes, as pioneered by the
[Carpentries](https://swcarpentry.github.io/swc-releases/2017.02/instructor-training/15-practices/),
to help with troubleshooting and to facilitate a positive learning experience overall.

|Method|Description|Advantages|
|---|---|---|
|Participatory live-coding lessons|Participants join with instructors to write and troubleshoot code step-by-step.|Encourages participants to actively engage with the material, to build muscle memory through typing, and to learn how to handle mistakes, rather than passively observing content.|
||||
|Independent reading of specific sections|Participants read more concept-heavy content at their own pace.|Including reading activities provides diverse learning opportunities aside from listening skills, can be advantageous for non-native English speakers, and can slow the pace of learning to enhance retention.|
||||
|Completion of brief exercises|Exercises are interspersed throughout the live-coding sessions to complement the content.|Hands-on, practical exercises help reinforce what was previously learned and provides an opportunity to work through code at the learners' own pace.|
||||
|Group assignment work|Participants collaborate with others to apply skills taught over the workshop in terms of cleaning, manipulating, analyzing, and visualizing data.|Helps to reinforce learning by applying the skills and knowledge to a new problem and task, thus building confidence in using the skills.|

Table: Description of pedagogical methods used throughout the workshop.

The [*For Instructors*](https://r-cubed.rostools.org/for-instructors.html) section
further describes the teaching approach that instructors can adopt to improve
learning outcomes.

## Experience of use in teaching and learning situations

The learning module has been delivered several times as 3-4 day workshops.
Instructors were graduate students or postdoctoral researchers from diverse
fields within diabetes research, of whom most had relatively recently learned R
themselves. Including late-novice or early-intermediate R users as instructors
makes communicating and relating to the learners easier and we believe it provides
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

Luke Johnston taught and built the learning material from this workshop in smaller
segments over many years. The material was initially created because of the
near complete lack of relevant training in academic settings on data management,
coding and general workflows in data analysis, version control, and project
management of scientific research. The teaching material was compiled into a more
structured form when the Danish Diabetes Academy hosted the workshop, where the
current author team has since heavily updated and revised it. We greatly enjoy
teaching the workshop and, based on the feedback from the surveys, the
participants do too!

# Acknowledgments

We want to specifically thank the [Danish Diabetes Academy](https://www.danishdiabetesacademy.dk/)
for hosting, organizing, and providing a space to build and grow this workshop.
We also thank the instructors and helpers of the first version of the workshop
(João Santiago, Anna Schritz, Omar Silverman) for their early feedback during
the first iteration.

# References
