---
title: 'r-cubed: A catchy title'
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
  - name: 
    orcid: 
    affiliation: 2
  - name: 
    orcid: 
    affiliation: 2
affiliations:
 - name: Steno Diabetes Center Aarhus, Aarhus, Denmark
   index: 1
 - name: Aarhus University, Aarhus, Denmark
   index: 2
date: 5 November 2020
bibliography: paper.bib
---

## Description of the Submission

<!-- Explanation of its eligibility for JOSE -->

This submission relates to a computational learning module that has been
developed and implemented as an open educational resource. The resource can be
applied to diverse educational contexts, and is immediately useable for adoption
by learners, instructors, and others interested in teaching.

## Statement of Need

### Contribution to computationally-enabled teaching and learning
(Pending literature review and comparison with existing courses)
Introduce reproducibility here?

### How the learning modules can be adopted by others

On the basis of authors' affilitations and fields of research, the content of
the learning module was developed and framed in the context of the medical
sciences (diabetes, specifically). Nonetheless, the resource can easily be
applied to other sciences and disciplines. Refer to Section 1.1 of the online
resource, for a more comprehensive description of how others may adopt learning
resources with minimal expertise in RStudio.
(Introduce DDA events as a clear example)

### Target audience

The learning module is suitable for anyone wishing to enhance their
reproducibility practices and/or be introduced to RStudio as a means of doing
so. Based on previous experience of use in teaching and learning, the course has
suited PhD and post-doctoral level researchers well.

## Description of Learning Modules

### Learning Objectives

The objective of this learning module is to teach reproducible research
practices. 
A detailed description of the learning objectives is found in
[*Section 2: Syllabus*](https://r-cubed.rostools.org/syllabus.html).
Briefly, upon completion of the learning module, learners are expected to
have: 

1. A basic level of proficiency in using the R statistical programming
language.
2. Improved data and code literacy.
3. An ability to conduct a modern and reproducible data analysis.

### Learning Content and Sequence

The learning module encompasses five sub-modules (see Table 1), with each
sub-module representing about a half-day of lessons.
A general schedule is given in 
[*Section 2.2*](https://r-cubed.rostools.org/syllabus.html#general-schedule) and 
details on how these lessons can be used or structured is found in
[*Appendix C: For Instructors*](https://r-cubed.rostools.org/for-instructors.html).

|Sub-module|Description|
|---|---|
|Management of R Projects|Introducing RStudio and R Projects; using packages, data, and file paths; and learning how to troubleshoot|
|Version Control with Git|Using Git with RStudio; synchronizing Git with GitHub; dealing with file conflicts; and using Git as a collaboration tool|
|Data Management and Wrangling|Introducing good working practices (i.e., "tidy" data); loading data and packages in to RStudio; and transforming data using select, rename, filter, arrange, and split-apply-combine functions|
|Analytically Reproducible Documents|Introducing R Markdown and inserting code, tables, and figures in R Markdown|
|Data Visualization|Plotting various combinations of variables and using formatting effectively|

Table: An overview of the five sub-modules that form the `r-cubed` learning module.

Sub-modules are designed to be completed as a series in the order in which they
are presented, since concepts taught in later sub-modules are dependent on
earlier lessons. Principles and applications of reproducibility are highlighted
throughout sub-modules. Sub-modules are accompanied by three stand-alone
lectures (and one introduction lecture) aimed at drawing together
reproducibility and RStudio skills (see
[*Section 6: Lecture Slides*](https://r-cubed.rostools.org/lecture-slides.html)).

### Instructional Design

When delivered during in-person workshops, the instructional design uses a
combination of teaching methods (see Table 2). Content taught using the methods
below are described in 
[*Section 1: Welcome!*](https://r-cubed.rostools.org/index.html) 

|Method|Description|Advantages|
|---|---|---|
|Participatory live coding lessons|Participants join with instructors to write and troubleshoot code step-by-step|Encourages participants to actively engage with the material, to build muscle memory through typing, and to learn how to handle mistakes, rather than passively observing content|
|Independent reading of specific sections|Participants read more concept heavy content at their own pace|Including reading activities provides diverse learning opportunities aside from listening skills, can be advantageous for non-native English speakers, and can slow the pace of learning to hopefully enhance retention|
|Completion of brief exercises|Exercises are interspersed throughout the live-coding sessions to complement the content|Hands-on, practical exercises help reinforce what was previously learned and provides an opportunity to work through code at the learners' own pace|
|Group assignment work|Participants collaborate with others to apply skills taught over the course in terms of cleaning, manipulating, analyzing, and visualizing data|Helps to reinforce learning by applying the skills and knowledge to a new problem and task, thus building confidence in using the skills|

Table: Description of pedagogical methods used throughout the course.

[*Appendix C: For Instructors*](https://r-cubed.rostools.org/for-instructors.html)
further describes the teaching approach that instructors can adopt in order to
maximize learning outcomes.

### Teaching and Learning Experiences

The learning module has presently been delivered three times as 2-3 day workshops.
Instructors were graduate students or postdoctoral researchers from diverse
fields of within diabetes research. Most of the instructors or helpers had
had recently learned R themselves or were still in the novice or early intermediate
phase of experience. This was intentional, as it is easier to relate to the 
challenges and experiences that the learners will face when instructors have
recent experiential learning themselves. In our experience, a ratio of about 4-6
learners for every instructor/helper provided the smoothest experience during
the workshop.

Course participants were mostly PhD and post-doctoral researchers in the field
of diabetes, most of whom were beginners in terms of their exposure to R and
understanding of reproducibility. Participants were grouped into clusters of
four to five people, in order to facilitate the group assignment work later in
the course. Participants were instructed to use sticky notes placed at the top
of their laptop screens to indicate whether they had either successfully
completed the task or were needing further support to troubleshoot a problem
(as done by Carpentries workshops REF).

After each day, participants gave feedback on the structure and content of the
course through a survey. This feedback has been used to improve on and enhance
the `r-cubed` learning module, ensuring it gets better structured, continues to
be relevant, and is beginner-friendly. The anonymous feedback is collected and
saved in the repository for use in our efforts to improve the learning module.

## Story of the Project

### How it came about and authors' experience

XYZ

## Acknowledgements

Thank DDA.
