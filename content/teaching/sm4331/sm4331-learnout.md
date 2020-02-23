---
title: SM-4331 Learning Outcomes
linktitle: Learning Outcomes
toc: false
type: docs
date: "2019-07-16T00:00:00+01:00"
draft: false 
menu:
  sm4331:
    name: Learning Outcomes
    weight: 20

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 20
---

## Chapter 1

BRIEF: You will learn how to find estimates of parameters of a statistical distribution based on data (observations/random samples), and speak of the properties of your estimator (biasedness, MSE, distribution)&mdash;in particular the maximum likelihood estimator.

#### Part 1

- Learn about these useful inequalities for statistics and probability theory:
  - Markov's inequality
  - Chebyshev's inequality
  - Jensen's inequality
  - Cauchy-Schwarz inequality
- Know what situations in which to apply these inequalities.
- Learn about different types of convergences for random variables:
  - Convergence in probability
  - Convergence in distribution
  - Convergence in mean square
- Know the relationship between the three kinds of convergences.
- Slutzky's theorem
- The (weak) Law of Large Numbers&mdash;statement and when to use it.
- The central limit theorem (CLT), and when and how to use it.

#### Part 2

- Understand the fundamental concepts of statistical inference: of estimation, confidence sets, and hypothesis testing.
- Point estimation: Obtaining an estimate for an unknown parameter in a statistical distribution.
- Desirable properties of estimators in terms of
  - Bias
  - Mean squared error
  - Variance
  - Consistency
  - Asymptotic normality
- This includes definitions of the above concepts.
- Difference between standard error and standard deviation.
- Maximum likelihood estimation
  - What is the likelihood, log-likelihood, score function.
  - One observation vs multiple observations.
  - How to obtain ML estimator.
  - Invariant property of ML estimator.
- The Fisher information and its usage, including how to obtain the Fisher information.
- How to obtain the Cramer-Rao bound for estimators, and knowing the concept of "efficient" / minimum variance.
- ML estimators are consistent and asymptotically normal.
- What is a confidence interval? 
- How to obtain confidence intervals from inversion of probability statements.
- Using asymptotic normality or CLT for obtaining confidence intervals.

## Chapter 2

BRIEF: You will learn the fundamental concepts of probability sampling design, and how to conduct and obtain estimates and confidence intervals for the mean via SRS, cluster and stratified sampling.

#### Part 1

- Understanding the broad concept of survey methodology.
- Focus on two sources of errors: coverage error and sampling error.
- On coverage error, learn and understand the concepts of:
  - Population vs sample
  - Variables and parameters
  - Sampling frame
  - Target vs survey vs frame population
- How does coverage error occur and how to minimise it. 
- Effects of coverage error on variable/parameter estimation.

#### Part 2

- Importance of probability sampling, and the concept of sampling error.
- Decomposition of MSE into bias and variance, and understanding that for unbiased estimators, goal of sampling is reduce variability of estimator.
- Three kinds of sampling methods, and knowing the difference between the three:
  - Simple random sampling
  - Cluster sampling
  - Stratified sampling
- The form of the estimator for the population mean, and the variance of this estimator is different for the three kinds of sampling methods.
- Understand motivation (adv vs disadv) of cluster or stratified sampling, compared to SRS.
- How to draw a random sample.
- Case study of full-scale probability sampling design: JPKE Household Expenditure Survey.


#### Part 3

- Technical detail of SRS:
  - Probability of selecting a unit.
  - Probability of inclusion.
  - Proof of unbiasedness and variance of estimator.
- Estimation of population totals, and how to construct its confidence interval.
- Determination of sample size based on several criteria:
  - Bound on the variance of the estimator.
  - Bound on estimation error.
  - Bound on confidence interval.
  - Bound on costs.

## Chapter 3

BRIEF: This chapter is a prelude to the statistical testing chapter by learning about the definition and properties of useful statistical distributions, including multivariate distributions.

- Derivation and properties of these important distributions in statistics:
  - $\chi^2$-distribution
  - Student's $t$-distribution
  - $F$-distribution
- Definition bivariate and multivariate discrete and continuous distributions.
- Conditional distributions.
- Definition and properties of
  - Multinomial distribution
  - Multivariate normal distribution

## Chapter 4

BRIEF: Parametric hypothesis testing.

## Chapter 5

BRIEF: Linear regression.

