+++
title = "A Beginner's Guide to Variational Inference"

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date = 2018-02-01T12:30:00
date_end = 2018-02-01T14:00:00
all_day = false

# Schedule page publish date (NOT talk date).
publishDate = 2017-01-01T00:00:00

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Haziq Jamil"]

# Location of event.
location = "LSE, London, United Kingdom"

# Name of event and optional event URL.
event = "LSE Social Statistics Group Meetings"
event_url = "http://socialstats.haziqj.ml"

# Abstract. What's your talk about?
abstract = "Estimation of complex models that consists of latent variables and various parameters, in addition to the data that is observed, might involve overcoming an intractable integral. For instance, calculating the likelihood of such models require marginalising over the latent variables, and this may prove to be difficult computationally—either due to model design or dimensionality. Variational inference, or variational Bayes as it is also known, offers an efficient alternative to Markov chain Monte Carlo methods, the Laplace approximation, and quadrature methods. Rooted in Bayesian inference and popularised in machine learning, the main idea is to overcome the difficulties faced by working with “easy” density functions in lieu of the true posterior distribution. The approximating density function is chosen so as to minimise the (reverse) Kullback-Leilber divergence between them. The topics that will be discussed are mean-field distributions, the coordinate ascent algorithm, and its properties, with examples following. The hope is that the audience will gain a basic understanding of the method to possibly spur on further research and applications in their respective work."

# Summary. An optional shortened abstract.
summary = ""

# Is this a featured talk? (true/false)
featured = true

# Tags (optional).
#   Set `tags = []` for no tags, or use the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["Variational Inference"]

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Optional filename of your slides within your talk folder or a URL.
url_slides = ""

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Links (optional).
url_pdf = "http://socialstats.haziqj.ml/soc-stat-meet-bgtvi-handout.pdf"
url_video = ""
url_code = "https://github.com/haziqj/soc-stat-meet-bgtvi"

# Demo talk page uses LaTeX math.
math = true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++


