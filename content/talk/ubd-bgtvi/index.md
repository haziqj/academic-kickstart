+++
title = "A Brief Guide to Variational Inference"

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date = 2018-12-04T14:30:00
date_end = 2018-02-01T15:00:00
all_day = false

# Schedule page publish date (NOT talk date).
publishDate = 2017-01-01T00:00:00

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["H Jamil"]

# Location of event.
location = "Faculty of Science, UBD, Brunei"

# Name of event and optional event URL.
event = "FOS Research Seminar"
event_url = ""

# Abstract. What's your talk about?
abstract = "The fitting of complex statistical models that consists of latent or nuisance variables, in addition to various parameters to be estimated, likely involves overcoming an intractable integral. For instance, calculating the likelihood of such models require marginalising over the latent variables, and this may prove to be difficult computationally, either due to dimensionality or model design. Variational inference, or variational Bayes as it is also known, offers an efficient alternative to Markov chain Monte Carlo methods, the Laplace approximation, and quadrature methods. Rooted in Bayesian inference and popularised in machine learning, the main idea is to overcome the difficulties faced by working with “easy” density functions in lieu of the true posterior distribution. The approximating density function is chosen so as to minimise the (reverse) Kullback-Leilber divergence between them. The topics that will be discussed are mean-field distributions, the coordinate ascent algorithm, and approximation properties, with an example following. The hope is that the audience will gain a basic understanding of the method to possibly spur on further research and applications in their respective work."

# Summary. An optional shortened abstract.
summary = ""

# Is this a featured talk? (true/false)
featured = false

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
url_slides = "files/ubd-bgtvi.pdf"

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Links (optional).
url_pdf = ""
url_video = ""
url_code = ""
links = []
#[{name = "See Also", url = "http://socialstats.haziqj.ml" }]

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

### Variational Inference for Mixture of Gaussians

![](/img/var-eg2.gif)

