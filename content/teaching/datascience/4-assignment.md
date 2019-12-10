---
title: Kiva.org assignment
linktitle: Assignment
toc: true
type: docs
date: "2019-07-16T00:00:00+01:00"
draft: false 
menu:
  datascience:
    name: Assignment
    weight: 10

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 10
---

## Assignment

You are tasked with conducting an exploratory data analysis of the [Kiva.org](https://www.kaggle.com/ambarish/kiva-data-analysis-w-naive-poverty-metric/data) loans data set.
In particular, focus on the following tasks:

1. Investigate the relationship between the loan taker's ability to pay and the usage of the loan (what it was funded for).

2. Preliminary analysis of predictive risk for new clients. What sort of characteristics are associated with high defaulting loans?

3. Explore interesting statistics segregated by regions, e.g. in Asia, what are loans most used for?

4. Can it be said that the Kiva.org loans make a positive impact to society? Perhaps, a region which sees a large number of approved microloans will measure better on a certain metric (e.g. unemployment rate) than in areas do not?

5. Is there any evidence of gender discrepancy in the number or amount of loans being funded?

## Instructions

For each of the questions above, think about 

- What data do you need?
- What transformations and summaries do you need to perform on the data?
- What kind of plots do you want to visualise?

Prepare an R script file containing the R code that you used for all of your exploratory analysis of the data set, including **importing, transforming, visualising, and any statistical summaries** of the data.

The R script file should be clearly anotated with your comments, such that the next person who reads your R script understands the intent behind your code.

Make use of commenting to write down any notes or conclusions that you have regarding the analyses.

## Data set

The main data set that you will have at your disposal are the four .csv files from [Kaggle](https://www.kaggle.com/ambarish/kiva-data-analysis-w-naive-poverty-metric/data).
You might find that there are data that you require for your analysis that is not present in the data set.
Try to find additional sources of data from the web for your needs.

## Presenting your work

Submit your R script to me for evaluation.
The fourth lecture of this course will be dedicated to a group discussion of the five exploratory data analysis tasks above.
