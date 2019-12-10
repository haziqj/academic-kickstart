+++
title = "Regression modelling using priors depending on Fisher information covariance kernels (I-priors)"
date = "2018-10-11"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["H Jamil"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
# 7 = Thesis
# 8 = Patent
publication_types = ["7"]

# Publication name and optional abbreviated version.
publication = "London School of Economics and Political Science"
publication_short = "PhD thesis, LSE"

# Abstract and optional shortened version.
abstract = "Regression analysis is undoubtedly an important tool to understand the relationship between one or more explanatory and independent variables of interest. In this thesis, we explore a novel methodology for fitting a wide range of parametric and nonparametric regression models, called the I-prior methodology [(Bergsma 2018)](https://arxiv.org/abs/1707.00274).\n\n We assume that the regression function belongs to a reproducing kernel Hilbert or Kreĭn space of functions, and by doing so, allows us to utilise the convenient topologies of these vector spaces. This is important for the derivation of the Fisher information of the regression function, which might be infinite dimensional. Based on the principle of maximum entropy, an I-prior is an objective Gaussian process prior for the regression function with covariance function proportional to its Fisher information.\n\n Our work focusses on the statistical methodology and computational aspects of fitting I-priors models. We examine a likelihood-based approach (direct optimisation and EM algorithm) for fitting I-prior models with normally distributed errors. The culmination of this work is the `R` package [`iprior`](https://cran.r-project.org/package=iprior) which has been made publicly available on CRAN. The normal I-prior methodology is subsequently extended to fit categorical response models, achieved by ''squashing'' the regression functions through a probit sigmoid function. Estimation of I-probit models, as we call it, proves challenging due to the intractable integral involved in computing the likelihood. We overcome this difficulty by way of variational approximations. Finally, we turn to a fully Bayesian approach of variable selection using I-priors for linear models to tackle multicollinearity.\n\n We illustrate the use of I-priors in various simulated and real-data examples. Our study advocates the I-prior methodology as being a simple, intuitive, and comparable alternative to similar leading state-of-the-art models."

# Summary. An optional shortened abstract.
summary = ""

# Digital Object Identifier (DOI)
doi = ""

# Is this a featured publication? (true/false)
featured = true

# Tags (optional).
#   Set `tags = []` for no tags, or use the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["PhD", "I-prior"]

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = ["my-phd"]

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Links (optional).
url_pdf = "/files/phd/phd-thesis-final-dae7107.pdf"
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = "https://haziqj.github.io/phd-thesis/"
url_video = ""
url_poster = ""
url_source = "https://github.com/haziqj/phd-thesis/"

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
links = [
  {name = "Errata", url = "/files/phd/errata.pdf"}, 
  {name = "Ch. 1", url = "/files/phd/chapter1.pdf"},
  {name = "Ch. 2", url = "/files/phd/chapter2.pdf"},
  {name = "Ch. 3", url = "/files/phd/chapter3.pdf"},
  {name = "Ch. 4", url = "/files/phd/chapter4.pdf"},
  {name = "Ch. 5", url = "/files/phd/chapter5.pdf"},
  {name = "Ch. 6", url = "/files/phd/chapter6.pdf"},
  {name = "Ch. 7", url = "/files/phd/chapter7.pdf"},
  {name = "Apx.", url = "/files/phd/appendix.pdf"},
  {name = "Supp.", url = "/files/phd/supplementary.pdf"}
]

# Does this page contain LaTeX math? (true/false)
math = true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Center"
+++
