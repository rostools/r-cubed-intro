cp slides/introduction.qmd _introduction.qmd
cp slides/what-next.qmd _what-next.qmd

quarto render _*.qmd --to r3-theme-revealjs

mv _introduction.html slides/introduction.html
mv _what-next.html slides/what-next.html
