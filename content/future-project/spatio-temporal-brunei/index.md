+++
# Project title.
title = "Spatio-temporal analysis of Brunei data"

# Date this page was created.
date = 2019-03-09T00:00:00

# Project summary to display on homepage.
summary = "A data analytics exercise of patterns in spatial and temporal distributions of certain Bruneian data (demography, health, economics, business)."

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Spatio-temporal", "Machine Learning"]

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

For my PhD project, I modelled the probabilities of farm houses contracting a particular type of bovine tuberculosis (BTB) over time in Cornwall, UK.
I thought something similar could be done specifically for Bruneian data, but not necessarily BTB data of course.
Some ideas include, but are not limited to:

1. Economic data (income, unemployment, etc.)
2. Educattional data (student-teach ratio, percentage passes in exams, etc.)
3. Demographic data (fertility rate, mortality rate, etc.)
4. Business data (number of coffee shops, land prices, etc.)

The challenge here firstly would be first to acquire data for analysis, which is not readily available.
There are official sources for some of these data, but for unstructured data which may be scattered all over the internet and social media, it would be interesting to come up with a device that can scrape these types of data automatically.

Secondly, at a minimum, this project involves visualisation of the data set. 
Since these are also temporal data (over time), animations play a vital role here.

Thirdly, appropriate models are to be constructed for prediction of future time values or spatial points for which we have no data on.
I would propose looking at some machine learning techniques for this part.

