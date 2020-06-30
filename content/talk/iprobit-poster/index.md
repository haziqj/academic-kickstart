+++
title = "Binary and Multinomial Regression using Fisher Information Covariance Kernels (I-priors)"

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date = 2018-03-27T12:30:00
date_end = 2018-03-27T14:00:00
all_day = false

# Schedule page publish date (NOT talk date).
publishDate = 2017-01-01T00:00:00

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Haziq Jamil"]

# Location of event.
location = "LSE, London, United Kingdom"

# Name of event and optional event URL.
event = "Inaugural Workshop on Data Science Theory and Practice"
event_url = "http://www.lse.ac.uk/Statistics/Events/Workshop-on-Data-Science-Theory-and-Practice"

# Abstract. What's your talk about?
abstract = "In a regression setting, we define an I-prior as a Gaussian process prior on the regression function with covariance kernel equal to its Fisher information. We present some methodology and computational work on estimating regression functions by working in the appropriate reproducing kernel Hilbert space of functions and assuming an I-prior on the function of interest. In a regression model with normally distributed errors, estimation is simple—maximum likelihood and the EM algorithm is employed. In the classification models (categorical response models), estimation is performed using variational inference. I-prior models perform comparatively well, and often better, to similar leading state-of-the-art models for use in prediction and inference. Applications are plentiful, including smoothing models, modelling multilevel data, longitudinal data, functional covariates, multi-class classification, and even spatiotemporal modelling."

# Summary. An optional shortened abstract.
summary = ""

# Is this a featured talk? (true/false)
featured = true

# Tags (optional).
#   Set `tags = []` for no tags, or use the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["I-prior", "PhD", "Spatio-temporal", "Probit Models"]

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
projects = ["my-phd"]

# Links (optional).
url_pdf = "/files/iprobit-poster-portrait-a1.pdf"
url_video = ""
url_code = "https://github.com/haziqj/iprobit-poster"

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

### Spatio-temporal modelling of bovine tuberculosis

Prediction of probability surface plots over time.

![](/img/btb.gif)

