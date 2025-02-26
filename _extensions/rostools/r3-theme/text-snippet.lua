local review_note = [[
::: {.callout-note appearance="minimal" collapse="true"}
## :teacher: Instructor note

Before beginning, get them to recall what they remember of the previous
session, either with something like Mentimeter, verbally, or using hands
/ stickies / origami hats. Preferably something that will allow everyone
to participate, not just the ones who are more comfortable being vocal
to the whole group.

Depending on what they write, you may need to briefly go over the previous
session.
:::
]]

local sticky_up = [[
::: {.callout-caution appearance="minimal"}
## Sticky/hat up!

When you're ready to continue, place the sticky/paper hat on your
computer to indicate this to the instructor :womans_hat: :tophat:
:::
]]

local faq_text = [[
Throughout the many times we've taught this and other workshops we
get asked a lot of questions. We have a [Frequently Asked
Questions](https://guides.rostools.org/faq) page for keeping track of
some of these questions. Check out this page, maybe your question has
already been answered!
]]

local wip = [[
::: {.callout-warning appearance="default"}
🚧 This section is being actively worked on. 🚧
:::
]]

-- TODO: This doesn't trigger the r chunk to execute
local code_appendix = [[
::: {.callout-tip appearance="minimal" icon="false" collapse="true"}
## Code used in section

This lists *some*, but not all, of the code used in the section. Some code is
incorporated into Markdown content, so is harder to automatically list here in
a code chunk. The code below also includes the code from the exercises.

<!-- The stringr subset removes code chunks that aren't shown or typed by the learner. -->
```{r code-appendix}
#| echo: false
#| eval: false
#| ref-label: !expr stringr::str_subset(knitr::all_labels(), "^(unnamed-chunk-.*|purl-only-.*|setup|fig-.*)", negate = TRUE)
```
:::
]]

local discord_text = [[
If you want to get help virtually or after the workshop, you can join the
[Discord channel](https://discord.gg/WKyTF5yXBJ) where you can ask questions
in the `questions-or-advice` text channel.
]]

function text_snippet(args)
  local snippet_type = pandoc.utils.stringify(args[1])

  if snippet_type == "review_note" then
    return quarto.utils.string_to_blocks(review_note)
  elseif snippet_type == "sticky_up" then
    return quarto.utils.string_to_blocks(sticky_up)
  elseif snippet_type == "wip" then
    return quarto.utils.string_to_blocks(wip)
  elseif snippet_type == "faq_text" then
    return quarto.utils.string_to_blocks(faq_text)
  elseif snippet_type == "discord_text" then
    return quarto.utils.string_to_blocks(discord_text)
  elseif snippet_type == "code_appendix" then
    return quarto.utils.string_to_blocks(code_appendix)
  end
end
