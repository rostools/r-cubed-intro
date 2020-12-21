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
  - name: Hannah Chatwin
    orcid: 0000-0001-7248-8568
    affiliation: 3
  - name: Malene Revsbech Christiansen
    orcid: 0000-0002-9772-3576
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
date: 5 November 2020
bibliography: paper.bib
---

# Summary

With each passing year, the capacity to generate massive amount of biological
data continues to increase and with this capacity comes not only the huge volume
of data but also greater need for the skills and knowledge necessary to process
and analyze this data. Tightly coupled to this increasing need for computational
skills in science is an increasing demand that scientific studies be reproducible
and that the methods and analytic process to be open and transparent.

Unfortunately, training in modern computational skills has not kept pace and
this is especially evident in biomedical research. The computational learning
module we've developed and describe below is aimed at bringing awareness to and
improving skills in R, reproducibility, and open science for researchers in the
field of diabetes research. 

The learning modules are structured as a three-day course, with five sub-modules.
We've designed it specifically as an open educational resource that either other
instructors might make use of or modify on for their own lessons or for learners
to use on their own or as a reference after participating in the course.
All content is permissively licensed under CC-BY and MIT Licenses, and so
available for re-used.

# Statement of Need

Reproducibility is very important in modern research. Too often, researchers
cannot reproduce their own results due to a lot of manual data processing. We
need more clear guidlines and a concise idea of what has happened to the data.
This is importnat, not only for the society, but also for the researcher
him/herself.

- Furthermore, we need more a open data handling process. Too often, when
reading through materials and method sections in scoientific papers, these are
very limited and "narrow/small/skrabede"... This makes it difficult for other
researchers to 1) replicate the data analysis and 2) learn from (a) potentially
good science/method.
- Learning how to use version control is very useful for both indivual and group
project, as changes within the project can be tracked when it progresses. This
will save the persons, using the version control, a lot of time and make it
"gennemskueligt/clear and consice".

## Contribution to computationally-enabled teaching and learning

(Pending literature review and comparison with existing courses)
Introduce reproducibility here?
- Rmarkdown, code-along. Something about it is a useful way to learn by code-along. 

## How the learning modules can be adopted by others

On the basis of authors' affilitations and fields of research, the content of
the learning module was developed and framed in the context of the medical
sciences (diabetes, specifically). Nonetheless, the resource can easily be
applied to other sciences and disciplines. Refer to Section 1.1 of the online
resource, for a more comprehensive description of how others may adopt learning
resources with minimal expertise in RStudio.
(Introduce DDA events as a clear example)

- Maybe we can find someone else who want to test it? Or state that we would be
happy to hear feedback if others have tested it

## Target audience

The learning module is suitable for anyone wishing to enhance their
reproducibility practices and/or be introduced to RStudio as a means of doing
so. Based on previous experience of use in teaching and learning, the course has
suited PhD and post-doctoral level researchers well.

The learning module is suitable for anyone wishing to enhance their reproducibility practices and/or be introduced to RStudio as a means of doing so. Based on previous experience of use in teaching and learning, the course has suited PhD and post-doctoral level researchers well.
- Probably most suited for people who are doing data analysis and/or research. 
A very important thing is the introduction of Git/version control. This is a beneficial way for several people to work on the same project and keep track of changes in the project as it progresses. With the "user-friendly" (it is to a certain degree) outline/visualisation/buttons in R, it makes it easy for most people to use, despite the background, and the result from using version control will save many data analysts a lot of time!


# Description of Learning Modules

## Learning Objectives

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

## Content and sequence of learning materials

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

## Instructional Design

When delivered during in-person workshops, the instructional design uses a
combination of teaching methods (see Table 2). Content taught using the methods
below are described in 
[*Section 1: Welcome!*](https://r-cubed.rostools.org/index.html) 

The use of stickies makes the course even more interactive, and is a suitable way to get help fast. 

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

## Experience of use in teaching and learning situations

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

- Other issues that arose during this course were installation if Rpackages on computers controled by regional institutions, e.g. hospitals. Ways to cconquer such issues have been described in Appendix A2 and can be used in other scenarioes. 

- The helpers and instructors were not pure R experts (it is though recommened to have at least one (Luke!)). This created a special athmosphere during the course, and it set the standard and tone during the course which created a work-friendly environment.  

(Description of previous self-guided use?)

# Story of the Project

Going from each reseacher sitting with their own data management, a hundred different version controls (PhDcomics) and not being able to reproduce their own results, to a clear and concise data processing with openness about the science going on, so eryone can benefint from the methods and data processing. 

## How it came about and authors' experience

Very interesting topic to work with, and the authord learned a lot themselves too. Also beneficial for the authors to keep learning, using, making it a habit and distributing the idea of open science. 

# Acknowledgements

Thank DDA.
