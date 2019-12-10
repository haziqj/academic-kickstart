+++
# Project title.
title = "Scoring individual abilities using multilevel latent variable models"

# Date this page was created.
date = 2019-03-09T00:00:00

# Project summary to display on homepage.
summary = "To devise a suitable statistical model to produce scores for individuals' abilities relevant in the field of fitness and sports."

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Latent Variable Models", "Structural Equation Models"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Links (optional).
url_pdf = ""
url_slides = ""
url_video = ""
url_code = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# links = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com/georgecushen"}]

math = true

# Featured image
# To use, add an image named `featured.jpg/png` to your project's folder. 
[image]
  # Caption (optional)
  caption = ""
  
  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

Often, key constructs of interest remain elusive in a quantitative study because they are impossible to measure directly.
Examples from social science studies include individuals' intelligence quotient (IQ), or political tendencies (left or right).
However, under a reflective measurement theory, we can propose that these constructs influence the outcome of several tests which can be measured directly (e.g., IQ can be measured by appropriate IQ tests, and political tendencies by appropriate survey questions).

Taking this cue from the social sciences, it would be interesting to see this type of methodology being applied to sports and fitness.
Spefically, this study comes from a performance optimisation standpoint.
Under what conditions do athletes perform best?
Athletes' performance can be considered to be latent in nature, but several test items can be constructed to measure the latent variable indirectly.

It would also be interesting to construct a non-parametric relationship between several explanatory variables and the latent variable of interest in the structural part of the model. 
Doing so would allow for better flexibility and predictive abilities.
One idea would be to include a Gaussian process regression (GPR) in the structural equation model.

This project can be applied in nature, but there is also substantive scope to look into methodology.
For instance, a writeup of the estimation of such models when there is a GPR would certainly be noteworthy.



