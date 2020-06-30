---
title: Getting started with R
summary: Part 2--Learn about the data science framework, including importing, summarising, and visualising data using R.
authors: ["Haziq Jamil"]
tags: []
categories: []
date: "2019-07-08T00:00:00Z"
slides:
  # Choose a theme from https://github.com/hakimel/reveal.js#theming
  theme: white
  # Choose a code highlighting style (if highlighting enabled in `params.toml`)
  #   Light style: github. Dark style: dracula (default).
  highlight_style: dracula
---

# Introductory Data Science using R

R Exercise: The birthday problem

---

In a room of 23 people, what is the probability that at least two people share the same birthday?

---

### Let's count

First, some assumptions:

- There are only 365 days in a year
- Every day is equally likely to be a birthday
- Everyone's birthday is independent of each other

{{% fragment %}} **Strategy:** It's easier to figure out the probability of the complementary event. $$P(A) = 1 - P(A^c)$$ {{% /fragment %}}

---

### What's the complement?

- Let $A$ = At least two people share the same birthday
- Then $A^c$ = Nobody shares any birthday (all birthdays are different)
- Label the individuals from $1,\dots,23$
- How many possible birthdays can person 1 have? 365 out of 365
- How many possible birthdays can person 2 have? 364 out of 365
- ...

---

### What's the complement?

- Since all events are independent,
  $$P(A^c) = \frac{365}{365} \times \frac{364}{365} \times \cdots \times \frac{365-23+1}{365}$$
  $$= \frac{365!}{(365-23)!365^{23}}$$
- Thus,
  $$P(A) = 1 - \frac{365!}{(365-23)!365^{23}}$$

---

### Logarithms

Factorials are often too large to compute and can cause memory overflow. 
Adopt the alternative formula


$$P(A) = 1 - \exp \big\\{ \log(365!) - \log((365-23)!)  $$
$$- 23 \log 365 \big\\}$$

---

### Write this in R

Functions that you need:

- `factorial()` to compute factorials
- `lfactorial()` to compute log factorials
- `exp()` to compute exponentials

---

## New question

In a room of $x$ people, what is the probability that at least two people share the same birthday?

---

### Write this in R

Write a function that takes a positive integer `x` and returns the probability that at least two people share the same birthday.

BONUS: Plot it!



