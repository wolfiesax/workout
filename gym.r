# Set working directory
setwd("~/gym")

# Load packages
require(knitr)

# Create .md, .html, and .pdf files
knit("gym.rmd")

system("pandoc -f markdown -t latex --filter pandoc-eqnos --standalone --template=erimkdoc.template --latex-engine=xelatex -o gym.pdf gym.md")

system("pandoc -N -f markdown -t html5 --filter pandoc-eqnos -H custom.css --mathjax --standalone --toc -o gym.html gym.md")
