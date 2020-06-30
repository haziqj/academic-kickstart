---
title: Introductory Data Science using R
summary: Learn about the data science framework, including importing, summarising, and visualising data using R.
authors: ["Haziq Jamil"]
tags: []
categories: []
date: "2019-07-09T00:00:00Z"
slides:
  # Choose a theme from https://github.com/hakimel/reveal.js#theming
  theme: white
  # Choose a code highlighting style (if highlighting enabled in `params.toml`)
  #   Light style: github. Dark style: dracula (default).
  highlight_style: dracula
---

# Introductory Data Science using R

Lecture 1: The Data Science Framework

---

## Admin

- Content available at [https://haziqj.ml/teaching](https://haziqj.ml/teaching)
- 4 x 2hr lectures
- 10min break on the hour
- Ask questions as we go along

---

## Structure

- Lecture 1: The data science framework
- Lecture 2: Using `R`
- Lecture 3: Data science with `R`
- Lecture 4: Exploratory analysis of [Kiva.org](http://kiva.org) data 

---

![](/img/teaching/ds-1/scientific-method.jpg)

{{< speaker_note >}}
The scientific method is an empirical method of acquiring knowledge that has characterized the development of science since at least the 17th century. It involves careful observation, applying rigorous skepticism about what is observed, given that cognitive assumptions can distort how one interprets the observation. It involves formulating hypotheses, via induction, based on such observations; experimental and measurement-based testing of deductions drawn from the hypotheses; and refinement (or elimination) of the hypotheses based on the experimental findings. These are principles of the scientific method, as distinguished from a definitive series of steps applicable to all scientific enterprises
{{< /speaker_note >}}

---

## The scientific inquiry

data + model ---> understand

- Not new, arises in many fields
	- Natural sciences
	- Econometrics
	- Psychology
	- Sociology
	- etc.

{{< speaker_note >}}
- From a data science perspective, we are interested in the numerical aspects.
- qualitative vs quantitative
- It really is not new. Examples?
{{< /speaker_note >}}

---

<img src="/img/teaching/ds-1/piazzi-1.png" height="450" />


Giuseppe Piazzi's observations in the Monatliche Correspondenz, September 1801.

{{< speaker_note >}}
- 18th century 
- Collected data on position of a celestial object. Data and model show that the object did not behave like it was supposed to. Announced it as a comet but really was a planet.
{{< /speaker_note >}}

---

<img src="/img/teaching/ds-1/rct.png" height="450" />

- Design of experiments; randomised control trials.
- Sir Ronald Fisher (1890--1962).

{{< speaker_note >}}
- Fisher credited with the methods to analyze these types of data sets
- ANOVA
- Note the deliberate intent of collecting data for this specific purpose
- c.f. surveys
{{< /speaker_note >}}

---

<img src="/img/teaching/ds-1/big-data-1.jpeg" height="450" />

Data is now available by happenstance, and not just collected by design.

---

## Big Data

The more we measure, the more we don't understand

- Breadth vs depth paradox; Big p Small n; The curse of dimensionality
- "Data first" paradigm
- Ethics; privacy

{{< speaker_note >}}
- Data collected was manageable and intended. E.g. surveys
- Computing power
- Able to quantify greater degree the actions of individuals, but less able to characterize society
- Data comes after the question. Often do not have the luxury of tailoring what data is collected. Fundamental statistics issues surrounding data are thrown out the window: precision and accuracy. bias in data.
{{< /speaker_note >}}

---

`define: Data Science` 

*The "concept to unify statistics, data analysis, machine learning and their related methods" in order to "understand and analyze actual phenomena" with data.*

- Multi-displinary field
- Goal: extract knowledge and insights from structured and unstructured data

{{< speaker_note >}}
- In essence, need a systematic way of dealing with data. Need to combine knowledge from various fields. While every field was working in silos, they specialised in their own thing.
- Data science unites the fields of stats/maths and computer science to make data actionable.
{{< /speaker_note >}}

---

<!-- ![](/img/teaching/ds-1/data-science-venn.png) -->

<img src="/img/teaching/ds-1/data-science-venn.png" height="600" />

---

### Examples of Data Science problems

Real-world problems from the [Alan Turing Institute](https://www.turing.ac.uk)

- Real-time jammer detection, identification and localization in 3G and 4G networks
- Automated matching of businesses to government contract opportunities
- Using real-world data to advance air traffic control
- Personalised lung cancer treatment modelling using electronic health records and genomics

{{< speaker_note >}}
- ATI is the national institute for data science and artificial intelligence.
- interesting to ponder, why was it named after Alan Turing, the comuting pioneer?
{{< /speaker_note >}}

---

### Examples of Data Science problems

Real-world problems from the [Alan Turing Institute](https://www.turing.ac.uk)

- Identify potential drivers of engaging in extremism
- News feed analysis to help understand global instability
- Improved strength training using smart gym equipment data

--- 

<img src="/img/teaching/ds-1/data-science-1.png" height="550" />

---

## Scope: Exploratory

![](/img/teaching/ds-1/data-science-2.png)

- Focus on _transform_ and _visualise_
- Modelling requires a specific skill set (Stats or ML)
- GOAL: Generate many promising leads that you can later explore in more depth

---

### Machine Learning vs Statistics

**Statistics** aims to turn humans into robots. 

- Concept of "statistical proof"
- Often interest is _inference_

**Machine learning** aims to turn robots into humans.

- Make sense of patterns from big data
- Often interest is _prediction_

{{< speaker_note >}}
- Statistics aims to remove the bias of humans when perceiving patterns in data sets. Learn not to be conned; when someone tells you it is such, need proof.
- Stats: How big is big, and is it enough?
- Measuring effects. Important question: causality?
- On the other hand ML or AI aims to equip computers with human skills: image understanding, speech recognition, natural language processing, etc.
- Kind of "reverse engineering" of world processes based on data that is observed.
- Generate large labelled data sets from humans. Train models.
- Interesting note: programming language also speaks as to what your background is. R for stats, Python for ML.
{{< /speaker_note >}}

---

### Data Quality and Readiness

There's a sea of data, but most of it is undrinkable

<img src="/img/teaching/ds-1/drink-sea-water.jpg" height="300" />

Data neglect: data cleaning is tedious and complex

---

### 80-20 rule of Data Science

- Most time is spent cleaning up data
- Affectionally called data "wrangling"
- [TBA] [Data Readiness levels](http://inverseprobability.com/2017/01/12/data-readiness-levels) (Bands A, B and C)

{{< speaker_note >}}
- So much for the world's most sexiest job of the 21st century! according to business harvard review 2012.
- Company hires ML, software engineers, but not data cleaners! 
- The importance of data is hard to overstate.
{{< /speaker_note >}}

---

### Types of data

1. Structured data 
	- Data is in a nicely organised repository 
	- E.g. Tables, matrices, etc.
2. Unstructured data
	- Information does not have a predefined data model
	- E.g. images, colours, text, sound, etc.

---

### Types of data

1. Continuous data
	- Measurements are taken on a continuous scale e.g. height, weight, temperature, GDP, distance, etc.
	- Usually arises from physical experiments
2. Discrete data
	- Measurements which can only take certain values e.g. sex, survey responses (Likert scales), occupation, ratings, ranks, etc.
	- Usually arises in social sciences

---

### Types of data

| Treatment    | Continuous Data                                                         | Categorical Data    |
|--------------|-------------------------------------------------------------------------|---------------------|
| Import class | `numeric`                                                               | `factor`, `ordinal` |
| Visualise    | Histograms, density plots, scatter plot, box & whisker plot, pie charts | Bar plots,          |
| Summarise    | 5-point summaries                                                       | Frequency tables    |

---

### Exploratory Data Analysis

1. Generate questions about your data.

2. Search for answers by visualising, transforming, and modelling your data.

3. Use what you learn to refine your questions and/or generate new questions.

More on this later...

---

### Modelling

$$y_i = \alpha + \beta x_i + \epsilon_i$$
$$\epsilon_i \sim \text{N}(0,\sigma^2)$$


- EDA does not help in providing statistical proof, nor give predictions
- To do this, engage in statistical or ML models
- Many types of models, depending on what question you want answered

---

### The R programming language

`R` is a language and environment for statistical computing and graphics https://www.r-project.org/about.html

- It is free and open source
- Runs everywhere
- Supports extensions
- Engaging community
- Links to other languages

---

![](/img/teaching/ds-1/rstudio.jpg)

---

### `ggplot2` in R

![](/img/teaching/ds-1/ggplot2-1.png)

---

### `ggplot2` in R

![](/img/teaching/ds-1/ggplot2-2.png)

---

### `ggplot2` in R

![](/img/teaching/ds-1/ggplot2-3.gif)

---

## [Kiva.org](http://kiva.org) data set

https://www.kaggle.com/kiva/data-science-for-good-kiva-crowdfunding#kiva_loans.csv

---

## Exercise

- What exploratory analyses would you conduct on this data set?
- What other data do you need to supplement your analyses?
- What questions do you aim to answer?

---

## End of Lecture 1

Questions?

---

# Supplementary material

---

## Inference vs Prediction

<img src="/img/teaching/ds-1/ml-stats-1.png" height="400" />

Source: [datascienceblog.com](https://www.datascienceblog.net/post/commentary/inference-vs-prediction/)

{{< speaker_note >}}
- Inference: Use the model to learn about the data generation process.
- Prediction: Use the model to predict the outcomes for new data points.
{{< /speaker_note >}}

---

## Model interpretability 

- Model interpretability is necessary for inference
- In a nutshell, a model is interpretable if we can "see" how the model generates its estimates
- c.f. Blackboxes
- Interpretable models often uses simplified assumptions

{{< speaker_note >}}
- Inference: Use the model to learn about the data generation process.
- Prediction: Use the model to predict the outcomes for new data points.
{{< /speaker_note >}}

---

## Model complexity

- A complex model is often better at prediction tasks
- "More parameters to tune"
- However, model interpretability suffers

---

### Bias-Variance tradeoff

<img src="/img/teaching/ds-1/bias-variance.png" height="400" />

$$
E[f(x) - \hat f (x)]^2 = \text{Bias}^2[\hat f(x)] + \text{Var}[\hat f(x)] + \sigma^2
$$

{{< speaker_note >}}
- Bias: How close to the truth
- Variance: How varied the predictions will be under a new data set
{{< /speaker_note >}}

---

### Linear regression

<img src="/img/teaching/ds-1/efw.png" height="450" />

Economic freedom = 2.6 + 0.6 Trade

{{< speaker_note >}}
- Trade: tariffs, regulatory trade barriers, black market, control movement of capital and people, trade
{{< /speaker_note >}}

---

### Neural networks

<img src="/img/teaching/ds-1/neural-network.gif" height="450" />

Source: [towardsdatascience.com](https://towardsdatascience.com/everything-you-need-to-know-about-neural-networks-and-backpropagation-machine-learning-made-easy-e5285bc2be3a)

---

### Survey Methodology

<img src="/img/teaching/ds-1/survey-methodology.png" height="450" />

Source: Groves et al. (2009)

---

### Three populations

<img src="/img/teaching/ds-1/sampling-frame.png" height="450" />

---

### Sampling design for BSA survey

- Target: Adults aged 18 or over in GB
- Survey: Private households south of the Caledonian Canal
- Frame: Addresses in the Postcode address file

Multistage design:

- Stratify by postcode sectors
- Simple random sampling of addresses
- Simple random sampling of individuals

From 60mil people, obtained 3,297 respondents in final sample.

{{< speaker_note >}}
- What is random? Not predetermined
- Everyone should be able to be sampled with positive probability
- Unbiased
{{< /speaker_note >}}

---

### See also

- https://www.surveymonkey.com/mp/sample-size-calculator/
- http://www.bsa.natcen.ac.uk/latest-report/british-social-attitudes-30/technical-details.aspx

---

### Data Readiness

- Band C: Hearsday data. Is it really available? Has it actually been recorded? Format: PDF, log books, etc.
- Band B: Ready for exploratory analysis, visualisations. Missing values, anomalies, ...
- Band A: Ready for ML/Stats models.

---


<!-- ---

## Controls

- Next: `Right Arrow` or `Space`
- Previous: `Left Arrow`
- Start: `Home`
- Finish: `End`
- Overview: `Esc`
- Speaker notes: `S`
- Fullscreen: `F`
- Zoom: `Alt + Click`
- [PDF Export](https://github.com/hakimel/reveal.js#pdf-export): `E`

---

## Code Highlighting

Inline code: `variable`

Code block:
```python
porridge = "blueberry"
if porridge == "blueberry":
    print("Eating...")
```

---

## Math

In-line math: $x + y = z$

Block math:

$$
f\left( x \right) = \;\frac{{2\left( {x + 4} \right)\left( {x - 4} \right)}}{{\left( {x + 4} \right)\left( {x + 1} \right)}}
$$

---

## Fragments

Make content appear incrementally

```
{{%/* fragment */%}} One {{%/* /fragment */%}}
{{%/* fragment */%}} **Two** {{%/* /fragment */%}}
{{%/* fragment */%}} Three {{%/* /fragment */%}}
```

Press `Space` to play!

{{% fragment %}} One {{% /fragment %}}
{{% fragment %}} **Two** {{% /fragment %}}
{{% fragment %}} Three {{% /fragment %}}

---

A fragment can accept two optional parameters:

- `class`: use a custom style (requires definition in custom CSS)
- `weight`: sets the order in which a fragment appears

---

## Speaker Notes

Add speaker notes to your presentation

```markdown
{{%/* speaker_note */%}}
- Only the speaker can read these notes
- Press `S` key to view
{{%/* /speaker_note */%}}
```

Press the `S` key to view the speaker notes!

{{< speaker_note >}}
- Only the speaker can read these notes
- Press `S` key to view
{{< /speaker_note >}}

---

## Themes

- black: Black background, white text, blue links (default)
- white: White background, black text, blue links
- league: Gray background, white text, blue links
- beige: Beige background, dark text, brown links
- sky: Blue background, thin dark text, blue links

---

- night: Black background, thick white text, orange links
- serif: Cappuccino background, gray text, brown links
- simple: White background, black text, blue links
- solarized: Cream-colored background, dark green text, blue links

---

{{< slide background-image="/img/boards.jpg" >}}

## Custom Slide

Customize the slide style and background

```markdown
{{</* slide background-image="/img/boards.jpg" */>}}
{{</* slide background-color="#0000FF" */>}}
{{</* slide class="my-style" */>}}
```

---

## Custom CSS Example

Let's make headers navy colored.

Create `assets/css/reveal_custom.css` with:

```css
.reveal section h1,
.reveal section h2,
.reveal section h3 {
  color: navy;
}
```

---

# Questions?

[Ask](https://discourse.gohugo.io)

[Documentation](https://sourcethemes.com/academic/docs/)
 -->