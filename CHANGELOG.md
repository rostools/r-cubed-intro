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

## 5.1.0 (2026-01-07)

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

## v2025.01.14 (2025-01-21)

### Feat

- :sparkles: MAJOR refactor and reorganization of material (#73)
- arrange isn't very important, move to extras

### Fix

- **sessions**: :bug: a wrong snippet was used
- :pencil2: fix small build issues
- keep these extra sections consistent in titles
- clearer title

### Refactor

- **sessions**: :recycle: incorporate axis labels into other sections and simplify
- **sessions**: :recycle: makes more sense to split up exercise more
- :bento: use a different, simpler dataset
- **preamble**: :recycle: use text snippets instead in the pre-course tasks
- :recycle: initial, raw reorganization of content
- :recycle: can't include executable code in the templates in r3admin, using includes
- :recycle: revise schedule to be in Markdown format, not CSV
- :recycle: use soft-linking to have extensions folder be in slides to build from there

## v2024.01.23 (2024-02-08)

### Feat

- select the columnt that gets filtered so we can see the change
- finish adding the filename to the rest of chunks
- add note about keybind help in RStudio.
- use filename to add location for code chunk.

### Fix

- clarify viewing and saving data
- edits from code suggestions
- formatting fix as well as clarify not to run code in reading task
- clarify that potting is easier compared to other programs
- small typo fix
- clarify, we don't want to save the changes to the data
- small clarification in exercise text
- this gets reformatted incorrectly, fixed
- there was a typo in the setting
- trigger downlit so functions get linked to their url
- just remove this, it doesn't make sense
- add 'intro' to title on navbar
- clarify not to run this command, not needed this code
- this isn't necessary anymore
- add a markdown tag to chunk
- it originally didn't work the way I expected, now it does
- some small typos and formatting issues
- correct URL to feedback survey
- force mermaid diagrams to use max width
- remove text about merely useful
- it should be DDEA with their new logo
- not sure why the knit_child stopped working.
- update keybinding to use the variable instead
- appearance of code chunk should be default
- there was a duplicate variable
- don't actually need freeze option, realistically.
- add code chunk to trigger downlit connection
- forgot about this one
- these should have been removed after deleting functions file
- these should be two-level headers
- update the syllabus to match closer to the style of later courses
- remove comments from ggplot session, not needed.
- final keybinding switched for render/knit
- update keybind format for code chunks.
- switch styler to using the keybind format.
- Switch to using Quarto, remove references from rmd to qmd. Closes #27
- Save Qmd file after creating. Closes #28
- reformat plus update license year
- switch to using keybind kbd shortcode. Related to #26
- there are several setup chunks I'd like to include
- don't need this anymore

## v2023.04.25 (2023-04-30)

## v2023.01.16 (2023-02-22)

## v2022.03 (2022-12-12)

## v4.1 (2021-10-04)

## v4.0 (2021-09-30)

## v3.0 (2021-02-04)

## v2.0 (2020-06-29)
