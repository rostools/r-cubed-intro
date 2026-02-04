# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits)
when writing commit messages, we're able to automatically create formal
"releases" of the workshop based on the commit messages. Releases in the
context of workshops are simply snapshots in time of the workshop
content. The releases are published to Zenodo for easier discovery,
archival, and citation purposes. We use
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen)
to be able to automatically create these releases, which uses
[SemVar](https://semverdoc.org) as the version numbering scheme.

Because releases are created based on commit messages, we release quite
often, sometimes several times in a day. This also means that any
individual release will not have many changes within it. Below is a list
of the releases we've made so far, along with what was changed within
each release.

If you attended a workshop or used the workshop material as some point
in time, you can always refer to this changelog page to find out what
has been changed since you last used it.

## 5.3.6 (2026-02-04)

### Refactor

- **sessions**: :recycle: set last exercise as optional (in case of overtime)

## 5.3.5 (2026-02-04)

### Fix

- **sessions**: :bug: need to trigger downlit for GitHub session

## 5.3.4 (2026-02-04)

### Refactor

- :truck: move troubleshooting section into appendix

## 5.3.3 (2026-02-04)

### Fix

- **overview**: :pencil2: random random word that was added accidentally

## 5.3.2 (2026-02-03)

### Fix

- **sessions**: :bug: link bibliography in slides

### Refactor

- **sessions**: :recycle: small improvements to flow in intro slide
- **sessions**: :fire: remove question in slide that isn't relevant to beginners
- :lipstick: remove use of sticky, go with origami hat instead

## 5.3.1 (2026-02-02)

### Fix

- **sessions**: :pencil2: don't tell them to commit the HTML files

## 5.3.0 (2026-02-01)

### Feat

- **sessions**: :sparkles: add slides mentioning AI tools

### Refactor

- **appendix**: :fire: remove unused exercise from appendix file
- **sessions**: :pencil2: small fixes to intro slides
- **appendix**: :recycle: update GitHub extras, removing videos and using only text

## 5.2.2 (2026-02-01)

### Fix

- **sessions**: :bug: correct ref to Import data session
- :bug: reformat to correct for same `[^1]` footnote
- **sessions**: :pencil2: clarify about `glykemi` in the bar plot

### Refactor

- **appendix**: :recycle: simplified social discussions
- :pencil2: replace "group project" with "team project"
- **overview**: :recycle: match schedule with venue's times

## 5.2.1 (2026-01-25)

### Refactor

- **sessions**: :recycle: replace with star us includes
- **sessions**: :recycle: simplify team project work
- **sessions**: 🔥 remove prodigenr GIF, use text instead to describe

## 5.2.0 (2026-01-25)

### Feat

- **sessions**: :sparkles: add section on ignoring Quarto output

### Fix

- :pencil2: small typo fixes
- :globe_with_meridians: fix broken URLs
- **pre-workshop**: :pencil2: clarify Mac users don't need to use Homebrew

### Refactor

- :truck: objectives into includes to put in syllabus

## 5.1.3 (2026-01-24)

### Fix

- **pre-workshop**: :bug: code chunk was rendered as sidebar title
- **pre-workshop**: :pencil2: remove mention of video in installing tasks

### Refactor

- **pre-workshop**: :pencil2: clarify that installing R packages may need IT help

## 5.1.2 (2026-01-24)

### Refactor

- :recycle: move GitHub section in guides to this repo (#156)

## 5.1.1 (2026-01-15)

### Fix

- **pre-workshop**: :pencil2: clarify that Git and GitHub setup are separate things
- **pre-workshop**: :pencil2: clarify to install packages manually if having issues

## 5.1.0 (2026-01-07)

Started using Commitizen for releases.

### Feat

- **pre-workshop**: :sparkles: link to and suggest downloading cheatsheets
- **pre-workshop**: :sparkles: summary list of sections to read
- **pre-workshop**: :sparkles: inform that sometimes Console text is red
- **pre-workshop**: :sparkles: add reminder about the `check_setup()` for the survey
- **pre-workshop**: :sparkles: add pre-workshop reading section
- **pre-workshop**: :sparkles: callout to suggest installing password manager
- :sparkles: add files from template

### Fix

- **pre-workshop**: :pencil2: include `@sec-` for survey
- **pre-workshop**: :pencil2: clarify to start tasks early, for IT approval
- **overview**: :pencil2: correct typos and issues on landing page
- **pre-workshop**: :pencil2: clarify and rearrange callout blocks to occur before text
- :bug: fix build issues in Quarto docs
- **sessions**: :bug: remove duplicate mermaid labels
- :bug: use `rostools-theme`, not `r3-theme` for YAML options
- :bug: fix broken URL links
- :pencil2: use "workshop" not "course"
- **pre-workshop**: :bug: don't eval code chunks in install R packages section
- **overview**: :pencil2: "course" renamed to "workshop"

### Refactor

- **pre-workshop**: :pencil2: edits from review of pre-workshop tasks
- :recycle: move text in intro to pre-workshop tasks
- **overview**: :recycle: update the landing page based on the template
- **pre-workshop**: :recycle: split out Git and GitHub setup into own file
- **pre-workshop**: :recycle: revise and update installing R packages task
- **pre-workshop**: :recycle: split section on R and RStudio into separate file
- **pre-workshop**: :bug: include task to read the code of conduct
- **pre-workshop**: :recycle: move callout note about install times up in section
- **pre-workshop**: :recycle: update pre-workshop tasks overview
- **pre-workshop**: :recycle: clarify to strongly recommend installing Homebrew
- **overview**: :recycle: update DDEA logo, plus better logo formatting
- **pre-workshop**: :recycle: update code of conduct from template
- :fire: no longer need this include file
- **pre-workshop**: :truck: split out and revised the section on doing the survey
- **overview**: :truck: split and move syllabus in `overview/`
- **overview**: :truck: use `meta` tags for survey in schedule and move to `overview/`
