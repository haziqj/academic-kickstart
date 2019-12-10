---
title: Useful data science functions in R
linktitle: R data science functions
toc: true
type: docs
date: "2019-07-17T00:00:00+08:00"
lastmod: "2019-07-17T00:00:00+08:00"
draft: false
menu:
  datascience:
    parent: Notes
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
output:
  html_document:
    keep_md: yes
---



As usual, before starting, load all the packages you need.


```r
library(tidyverse)
```

```
## ── Attaching packages ────────────── tidyverse 1.2.1 ──
```

```
## ✔ ggplot2 3.1.0       ✔ purrr   0.3.2  
## ✔ tibble  2.1.1       ✔ dplyr   0.8.0.1
## ✔ tidyr   0.8.3       ✔ stringr 1.4.0  
## ✔ readr   1.3.1       ✔ forcats 0.4.0
```

```
## ── Conflicts ───────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
```

# Data management

## Importing data sets

Data can be imported by going to $\text{File}\rightarrow\text{Import Dataset}$.
Alternatively, the code is


```r
# code for importing data
```

## Converting to tibbles


```r
as_tibble(iris)
```

```
## # A tibble: 150 x 5
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
##  1          5.1         3.5          1.4         0.2 setosa 
##  2          4.9         3            1.4         0.2 setosa 
##  3          4.7         3.2          1.3         0.2 setosa 
##  4          4.6         3.1          1.5         0.2 setosa 
##  5          5           3.6          1.4         0.2 setosa 
##  6          5.4         3.9          1.7         0.4 setosa 
##  7          4.6         3.4          1.4         0.3 setosa 
##  8          5           3.4          1.5         0.2 setosa 
##  9          4.4         2.9          1.4         0.2 setosa 
## 10          4.9         3.1          1.5         0.1 setosa 
## # … with 140 more rows
```

## Subsetting

To extract columns, use the `$` symbol.


```r
iris$Sepal.Length
```

```
##   [1] 5.1 4.9 4.7 4.6 5.0 5.4 4.6 5.0 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4
##  [18] 5.1 5.7 5.1 5.4 5.1 4.6 5.1 4.8 5.0 5.0 5.2 5.2 4.7 4.8 5.4 5.2 5.5
##  [35] 4.9 5.0 5.5 4.9 4.4 5.1 5.0 4.5 4.4 5.0 5.1 4.8 5.1 4.6 5.3 5.0 7.0
##  [52] 6.4 6.9 5.5 6.5 5.7 6.3 4.9 6.6 5.2 5.0 5.9 6.0 6.1 5.6 6.7 5.6 5.8
##  [69] 6.2 5.6 5.9 6.1 6.3 6.1 6.4 6.6 6.8 6.7 6.0 5.7 5.5 5.5 5.8 6.0 5.4
##  [86] 6.0 6.7 6.3 5.6 5.5 5.5 6.1 5.8 5.0 5.6 5.7 5.7 6.2 5.1 5.7 6.3 5.8
## [103] 7.1 6.3 6.5 7.6 4.9 7.3 6.7 7.2 6.5 6.4 6.8 5.7 5.8 6.4 6.5 7.7 7.7
## [120] 6.0 6.9 5.6 7.7 6.3 6.7 7.2 6.2 6.1 6.4 7.2 7.4 7.9 6.4 6.3 6.1 7.7
## [137] 6.3 6.4 6.0 6.9 6.7 6.9 5.8 6.8 6.7 6.7 6.3 6.5 6.2 5.9
```

## Reshaping


```r
reshape2::melt(table(diamonds$cut, diamonds$color), 
                      var = c("cut", "color"))
```

```
##          cut color value
## 1       Fair     D   163
## 2       Good     D   662
## 3  Very Good     D  1513
## 4    Premium     D  1603
## 5      Ideal     D  2834
## 6       Fair     E   224
## 7       Good     E   933
## 8  Very Good     E  2400
## 9    Premium     E  2337
## 10     Ideal     E  3903
## 11      Fair     F   312
## 12      Good     F   909
## 13 Very Good     F  2164
## 14   Premium     F  2331
## 15     Ideal     F  3826
## 16      Fair     G   314
## 17      Good     G   871
## 18 Very Good     G  2299
## 19   Premium     G  2924
## 20     Ideal     G  4884
## 21      Fair     H   303
## 22      Good     H   702
## 23 Very Good     H  1824
## 24   Premium     H  2360
## 25     Ideal     H  3115
## 26      Fair     I   175
## 27      Good     I   522
## 28 Very Good     I  1204
## 29   Premium     I  1428
## 30     Ideal     I  2093
## 31      Fair     J   119
## 32      Good     J   307
## 33 Very Good     J   678
## 34   Premium     J   808
## 35     Ideal     J   896
```

# Variation

## Continuous variables

### 5-point summaries


```r
summary(iris)
```

```
##   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
##  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
##  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
##  Median :5.800   Median :3.000   Median :4.350   Median :1.300  
##  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
##  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
##  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
##        Species  
##  setosa    :50  
##  versicolor:50  
##  virginica :50  
##                 
##                 
## 
```

```r
ggplot(reshape2::melt(iris), aes(x = variable, y = value)) +
  geom_boxplot()
```

```
## Using Species as id variables
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

Note: in the above code, we used the `melt()` function in `reshape2` package to aggregate the data. 
Explore what `melt()` does by running it in the console.

### Histograms


```r
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram()
```

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

### Density plots


```r
ggplot(iris, aes(x = Sepal.Length)) +
  geom_density(fill = "blue")
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

## Discrete variables

### Frequency tables


```r
table(mpg$class)
```

```
## 
##    2seater    compact    midsize    minivan     pickup subcompact 
##          5         47         41         11         33         35 
##        suv 
##         62
```

```r
prop.table(table(mpg$class))
```

```
## 
##    2seater    compact    midsize    minivan     pickup subcompact 
## 0.02136752 0.20085470 0.17521368 0.04700855 0.14102564 0.14957265 
##        suv 
## 0.26495726
```

### Barplots


```r
ggplot(mpg, aes(x = reorder(class, class, FUN = length))) +
  geom_bar() +
  labs(x = "Class")
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-11-1.png)<!-- -->

Note: The `reorder()` function sorts the bars... the syntax is a bit tricky to understand, so take it as is for now.

# Covariation

## Continuous variables

### Scatter plots


```r
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() 
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

### Smooth lines


```r
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth() 
```

```
## `geom_smooth()` using method = 'loess' and formula 'y ~ x'
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-13-1.png)<!-- -->

### Binning


```r
ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_boxplot(aes(group = cut_width(displ, 0.5)))
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

## Discrete variables

### Contingency tables


```r
table(diamonds$cut, diamonds$color)
```

```
##            
##                D    E    F    G    H    I    J
##   Fair       163  224  312  314  303  175  119
##   Good       662  933  909  871  702  522  307
##   Very Good 1513 2400 2164 2299 1824 1204  678
##   Premium   1603 2337 2331 2924 2360 1428  808
##   Ideal     2834 3903 3826 4884 3115 2093  896
```

```r
t(table(diamonds$cut, diamonds$color))
```

```
##    
##     Fair Good Very Good Premium Ideal
##   D  163  662      1513    1603  2834
##   E  224  933      2400    2337  3903
##   F  312  909      2164    2331  3826
##   G  314  871      2299    2924  4884
##   H  303  702      1824    2360  3115
##   I  175  522      1204    1428  2093
##   J  119  307       678     808   896
```

### Count plots


```r
ggplot(data = diamonds) +
  geom_count(mapping = aes(x = cut, y = color))
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-16-1.png)<!-- -->

### Heat maps


```r
dat <- reshape2::melt(table(diamonds$cut, diamonds$color), 
                      var = c("cut", "color"))
ggplot(dat, aes(x = color, y = cut)) +
    geom_tile(mapping = aes(fill = value))
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-17-1.png)<!-- -->

## Continuous x discrete

### Faceting


```r
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, nrow = 2)
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-18-1.png)<!-- -->

### Adding additional aesthetics


```r
ggplot(mpg, aes(x = displ, y = hwy, col = class)) +
  geom_point() 
```

![](/img/3-r4ds_files/figure-html/unnamed-chunk-19-1.png)<!-- -->
