+++
# Project title.
title = "Efficient methods for truncated normal distributions"

# Date this page was created.
date = 2019-03-09T00:00:00

# Project summary to display on homepage.
summary = "To explore efficient computational methods for evaluating truncated normal distributions."

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Truncated Normal", "R Package"]

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

Truncated normal distributions often appear in the estimation of various important statistical models, for example, binary and multinomial probit models, tobit models, and constrained linear regresion. 
Often times, a substantial part of the estimation algorithm involves the computation of moments or probabilities of the truncated normal distribution.
It is therefore important that the computational backend for producing these values of interest is made as efficient as possible.

Among other things, it would be interesting to look at the following:

1. Efficient ways to obtain moments $\text{E}[g(X)]$ where $X$ is distributed according to a truncated normal distribution.
2. Efficient ways to obtain probabilities involving truncated normal distributions.
3. Univariate and multivariate truncated normal distributions.

The main goal for this project is to create an `R` package which can be used by other developers and researchers for their specific usage.

Work involved: literature review and survey of current methods, identifying bottlenecks in algorithms, propose methodology to overcome such bottlenecks, software design.

