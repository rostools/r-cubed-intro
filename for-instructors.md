# For Instructors

## Workshop details

### Instructor and helper number

The recommended number of instructors for a 25-35 class size is about 3-6
instructors (~1 instructors for every 1-2 sessions). 
If there are more instructors, then less helpers are needed. 
The recommended combined total number of helpers
and instructors is about 6 for a smooth workflow experience for the learners.

### Setting up teams

Before the introduction session (maybe the day before),
assign people into groups 
and create GitHub teams for them using the [ghclass] package.
Use the R script `R/create-teams.R` to generate random group names,
and then assign people to these teams and to repositories.

[ghclass]: https://rundel.github.io/ghclass

Once teams are created, assign one instructor or helper to each group.

### Before your session

- Have an RStudio theme that uses a white background with black text.
This setting is easier to read on projectors.
- In "Global Options -> Appearance", 
put a higher Zoom value and increase the font size (maybe around 14). 
Exact zoom and font size depends on the projector.
- Put the Console and Script panes side by side rather than stacked. 
This can be changed in the "Global Options -> Pane Layout" 

### First day

In the room, arrange the tables into groups for each of the teams.
As participants come in, get them to sit in their assigned team by referring to the team lists placed in the middle of each table.

During the introduction, introduce all the instructors and helpers.

Some time during the introduction session, 
get them to stand in line and arrange themselves from 
"complete beginner" to "know a little bit" for R, 
data analysis, and programming.
During the introduction, 
describe the assignment and what's the purposes of the teams.

Before the lunch break, get the groups to have lunch together 
and introduce each other more. 
Get them to say their program, if they've used R before, 
some struggles they've had with R and with data analysis in general, 
and why they want to learn R.

### Throughout the sessions

- For most of the sessions,
there are sections that tell the participants to read on their own.
Know beforehand where these sections are,
get them to read over the section.
Ask for any questions about what they read, 
and if you want to elaborate you can, 
but it's not necessary given they just read it.
- For the exercises, 
make sure to get the learners helping each other out in their groups.
- Exercise solutions do not need to be covered by the instructor,
given the solution is provided already.
- Try to keep the screen on your RStudio as much as possible 
and don't switch applications often, 
only when you need to go to the course material or to show an exercise.
- Be aware of how much space you have on the projector screen 
and don't let R code go too long. 
You have two options to take so that all code stays on the screen
(use which ever you find most visually appealing):
    1. Use soft-wrapping of R code. 
    You can set this in RStudio by going to "Tools -> Global
    Options -> Code -> Editing tab"
    and then tick the "Soft-wrap R source files" option.
    2. Or, adding more lines to the code then you normally would use.
    For instance, instead of:

        ```r
        ggplot(NHANES, aes(x = BMI, y = Age, colour = Diabetes)) +
            geom_point()
        ```
    
        You could add new lines like:
    
        ```r
        ggplot(NHANES, 
               aes(x = BMI, 
                   y = Age, 
                   colour = Diabetes)) +
            geom_point()
        ```

### Making use of the stickies

- Check in with the learners to see where they are at by asking something like:
"Do you see the same thing as is on the screen? 
If yes, put the 'all good' sticky on your laptop. 
If no, use the 'need help' sticky."
- For the reading activities, before starting, ask:
"Please read this section as instructed. 
When you are done, put the 'all good' sticky up."
- For exercises, before starting, ask:
"Please complete the exercise. When you are done,
please put the 'all good' sticky up.
If you need help, put the 'need help' sticky up."

## Lesson material details

## Version control

For the reading parts, let them read it first 
and then walk through the material again, 
to reinforce importance of version control 
and doing it formally.
So give them a heads up that you'll be repeating things,
specifically to reinforce the concepts.

It's important in this session to go **slowly**. Version control is a challenging
topic and isn't something most people have ever learned about or dealt with.
So take it slow and make sure everyone is on the same page. Make use of stickies
frequently to assess how everyone is doing.

### About the slides

The slides are generated from the [xaringan] R package,
which uses [remark.js].
In the slides, there are notes that you can read 
either by going to the source `.Rmd` file 
or by opening the slides and hitting the `p` key.
To use the slides more efficiently, 
check out the [remark.js keyword shortcuts].

[remark.js]: https://remarkjs.com/#1
[xaringan]: https://github.com/yihui/xaringan
[remark.js keyword shortcuts]: https://github.com/gnab/remark/wiki/Keyboard-shortcuts
