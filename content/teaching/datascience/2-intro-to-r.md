---
title: Getting Started with R
linktitle: Getting Started with R
toc: true
type: docs
date: "2019-07-09T00:00:00+08:00"
lastmod: "2020-08-17T00:00:00+08:00"
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
    
math: true
---



# Key ideas

## Objects

R works on objects. 
All objects have the following properties (referred to as intrinsic attributes):

- `mode`: tells us what kind of thing the object is – possible modes include numeric, complex, logical, character and list.
- `length`: is the number of components that make up the object.

At the simplest level, an object is a convenient way to store information. 
In statistics, we need to store observations of a variable of interest. 
This is done using a numeric vector. 
Note that there are no scalars in R; a number is just a numeric vector of length 1.
Vectors are referred to as atomic structures; all of their components have the same mode.

If an object stores information, we need to name it so that we can refer to it later (and thus recover the information that it contains). 
The term used for the name of an object is identifier. 
An identifier is something that we choose. Identifiers can be chosen fairly freely in R. 
The points below are a few simple rules to bear in mind.

- In general any combination of letters, digits and the dot character can be used although it is obviously sensible to choose names that are reasonably descriptive.
- You cannot start an identifier with a digit or a dot so `moonbase3.sample` is acceptable but `3moons.samplebase` and `.sample3basemoon` are not.
- Identifiers are CASE SENSITIVE so `moon.sample` is different from `moon.Sample`. It is easy to get caught out by this.
- Some characters are already assigned values. These include `c`, `q`, `t`, `C`, `D`, `F`, `I` and `T`. Avoid using these as identifiers.

Typically we are interested in data sets that consist of several variables. 
In R, data sets are represented by an object known as a _data frame_. 
As with all objects, a data frame has the intrinsic attributes mode and length; data frames are of mode `list` and the length of a data frame is the number of variables that is contains. 
In common with many larger objects, a data frame has other attributes in addition to mode and length. 
The non-intrinsic attributes of a data frame are:

- `names`: these are the names of the variables that make up the data set;
- `row.names`: these are the names of the individuals on whom the observations are made;
- `class`: this attribute can be thought of as a detailed specification of the kind of thing the object is; in this case the class is `data.frame`.

The class attribute tells certain functions (generic functions) how to deal with the object. 
For example, objects of class "data.frame" are displayed on screen in a particular way.

## Functions, arguments and return values

R works by calling functions. 
The notion of a function is a familiar one; a function takes a collection of inputs and maps them to a single output. In R, inputs and output are objects. 
The inputs are referred to as _arguments_ and the output is referred to as the _return value_. 
Many useful functions are part of the standard R setup. Others are available via the inclusion of packages. 
One of the key advantages of R is the ease with which users can define their own functions. 
Functions are also objects; the mode of a function is `function` (sensibly enough). 
In computing, functions have _side-effects_. 
For example, calling a function may cause a graph to be drawn. 
In many instances, it is the side-effect that is important rather than the return value.

## Workspace and working directories

During an R session, a number of objects will be generated; for example we may generate vectors, data frames and functions. 
For the duration of the session, these objects are stored in an area of memory referred to as the workspace. 
If we want to save the objects for future use, we instruct R to write them to a file in our current working directory (directory is just another name for a folder). 
Note the distinction: things in memory are temporary (they will be lost when we log out); files are more permanent (they are stored on disk and the information they contain can be loaded into memory during our next session). 
Managing objects and files is an important part of using R effectively.

# A new R session

## Starting up

If you haven't already, download R and RStudio based on your operating system.
R can actually be run in the terminal (type `r` in your terminal) or the original R program itself.  
We will be working in RStudio, which is a user-friendly integrated development environment (IDE).

It is recommended to create a project, which automatically configures the working directory. 
To do this, go to $\text{File} \rightarrow \text{New project...}$.
If your files are already in a folder, select $\text{Existing Directory}$; otherwise select $\text{New Directory}$.
Don't select $\text{Version Control}$ for now.

## Using R as a calculator

The simplest thing that R can do is evaluate arithmetic expressions.


```r
1 + 1
## [1] 2

1 + 4.23
## [1] 5.23

1 + 1/2 * 9 - 3.14
## [1] 2.36

# Note the order in which operations are performed in the final calculation
```

> **Comments in R**. R ignores anything after a # sign in a command. 
> We will follow this convention. Anything after a # in a set of R commands is a comment.

## Vectors and assignment

We can create vectors at the command prompt using the concatenation function `c(...). c(object1,object2,...)`.

This function takes arguments of the same mode and returns a vector containing these values.


```r
c(1,2,3)
## [1] 1 2 3

c("Alpha", "Bravo", "Charlie")
## [1] "Alpha"   "Bravo"   "Charlie"
```

In order to make use of vectors, we need identifiers for them (we do not want to have to write vectors from scratch every time we use them). 
This is done using the assignment operator `<-` via `name <- expression`.
`name` now refers to an object whose value is the result of evaluating expression.


```r
numbers <- c(1,2,3)
people <- c("Alpha", "Bravo", "Charlie")

numbers
## [1] 1 2 3

people
## [1] "Alpha"   "Bravo"   "Charlie"

# Typing an object’s identifier causes R to print the contents of the object
```

Simple arithmetic operations can be performed with vectors.


```r
1:3 + c(4, 5, 6)
## [1] 5 7 9

numbers + numbers
## [1] 2 4 6

numbers - c(8, 7.5, -2)
## [1] -7.0 -5.5  5.0

rep(12, 3) / numbers
## [1] 12  6  4
```

Note in the above example that multiplication and division are done element by element.

> **Reusing commands**. If you want to bring back a command which you have used earlier in the session, press the up arrow key ↑. This allows you to go back through the commands until you find the one you want. The commands reappear at the command line and can be edited and then run by pressing return.

The outcome of an arithmetic calculation can be given an identifier for later use.


```r
calc1 <- numbers + c(8, 7.5, -2)
calc2 <- calc1 * calc1
calc1
## [1] 9.0 9.5 1.0
calc2
## [1] 81.00 90.25  1.00

(calc1 <- calc1 + calc2)
## [1] 90.00 99.75  2.00
calc1
## [1] 90.00 99.75  2.00
calc2
## [1] 81.00 90.25  1.00

# Note: in the final step we have update the value of calc1 by adding calc2 to
# the old value; calc1 changes but calc2 is unchanged
```

If we try to add together vectors of different lengths, R uses a recycling rule; the smaller vector is repeated until the dimensions match.



```r
1:5 + 1
## [1] 2 3 4 5 6

small <- c(1, 2)
large <- c(0, 0, 0, 0, 0, 0)
large + small
## [1] 1 2 1 2 1 2
```

> **Where have all the objects gone?** We have defined a lot of variables so far. Inspect the 'Environment' tab to inspect all objects saved in the workspace.

### Example: sheep weight

We have taken a random sample of the weight of 5 sheep in the UK. 
The weights (kg) are 84.5, 72.6, 75.7, 94.8, and 71.3.
We are going to put these values in a vector and illustrate some standard procedures.


```r
weight <- c(84.5, 72.6, 75.7, 94.8, 71.3)
weight
## [1] 84.5 72.6 75.7 94.8 71.3

total <- sum(weight)
numobs <- length(weight)
meanweight <- total / numobs
meanweight
## [1] 79.78

# We have worked out the mean the hard way.  There is a quick way...
mean(weight)
## [1] 79.78
```

## Matrices

Another form of data in `R` are matrices. A matrix is formed using the `matrix()` function, which takes in a vector argument, plus the number of rows and number of columns the matrix should be. For example, to create a $4 \times 3$ matrix, one types


```r
mat <- matrix(1:12, nrow = 4, ncol = 3)
mat
##      [,1] [,2] [,3]
## [1,]    1    5    9
## [2,]    2    6   10
## [3,]    3    7   11
## [4,]    4    8   12
```

Notice that the matrix is built column by column. If we wish to specify that the matrix be built by filling in the rows first, we use the option `byrow = TRUE`.


```r
mat <- matrix(1:12, nrow = 4, byrow = TRUE)
mat
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9
## [4,]   10   11   12
```

In the above, we skipped the `ncol` argument as it is not needed. If it is unambiguous enough, then you can skip one of `nrow` or `ncol`, but it is certainly good practice to specify both in order to avoid silly mistakes. 

Remember, `R` practices the recycling rule, and this applies even to matrices. The following code will not given an error, but it may not have the intended result.


```r
mat <- matrix(1:3, nrow = 10, ncol = 3, byrow = TRUE)
mat
##       [,1] [,2] [,3]
##  [1,]    1    2    3
##  [2,]    1    2    3
##  [3,]    1    2    3
##  [4,]    1    2    3
##  [5,]    1    2    3
##  [6,]    1    2    3
##  [7,]    1    2    3
##  [8,]    1    2    3
##  [9,]    1    2    3
## [10,]    1    2    3
```

A very useful class of matrices that you would often encounter is diagonal matrices. These are built using the `diag()` function in `R`.


```r
diag(3)  # the 3 x3 identity matrix
##      [,1] [,2] [,3]
## [1,]    1    0    0
## [2,]    0    1    0
## [3,]    0    0    1
diag(1:5)  # a diagonal matrix with diagonal entries 1, 2, ..., 5
##      [,1] [,2] [,3] [,4] [,5]
## [1,]    1    0    0    0    0
## [2,]    0    2    0    0    0
## [3,]    0    0    3    0    0
## [4,]    0    0    0    4    0
## [5,]    0    0    0    0    5
```

## Data frames

A data frame is an R object that can be thought of as representing a data set. 
A data frame consists of variables (columns vectors) of the same length with each row corresponding to an experimental unit. 
The general syntax for setting up a data frame is `name <- data.frame(variable1, variable2, ...)`.

Individual variables in a data frame are accessed using the $ notation: `name$variable`.

Once a data frame has been created we can view and edit it in a spreadsheet format using the command `fix(...)` (or equivalently `data.entry(...)`). 
New variables can be added to an existing data frame by assignment.

### Example: sheep again

Suppose that, for each of the sheep weighed in the example above, we also measure the height at the shoulder. The heights (cm) are 86.5, 71.8, 77.2, 84.9, and 75.4.
We will set up another variable for height. We would also like to have a single structure in which the association between weight and height (that is, that they are two measurements of the same sheep) is made explicit. 
This is done by adding each variable to a dataframe. 
We will call the data frame sheep and view it using `fix(sheep)`.


```r
height <- c(86.5, 71.8, 77.2, 84.9, 75.4)
sheep <- data.frame(weight, height)
mean(sheep$height)
## [1] 79.16
## 
## fix(sheep)
```

Suppose that a third variable consisting of measurements of the length of the sheeps’ backs becomes available. The values (in cm) are 130.4, 100.2, 109.4, 140.6, and 101.4.
We can include a new variable in the data frame using assignment. Suppose we choose the identifier `backlength` for this new variable:


```r
sheep$backlength <- c(130.4, 100.2, 109.4, 140.6, 101.4)
```

Look at the data in spreadsheet format to check what has happened.

## Lists

Lists in `R` are objects which can hold various kinds of objects together in one list. The easiest way to explain this is to construct a list:


```r
my_list <- list(
  a = 1,
  b = diag(1:3),
  c = lm(rnorm(100) ~ 1 + rt(100, 1)),
  d = plot(rnorm(10), ),
  e = sheep
)
str(my_list)
## List of 5
##  $ a: num 1
##  $ b: int [1:3, 1:3] 1 0 0 0 2 0 0 0 3
##  $ c:List of 12
##   ..$ coefficients : Named num [1:2] -0.13641 0.00289
##   .. ..- attr(*, "names")= chr [1:2] "(Intercept)" "rt(100, 1)"
##   ..$ residuals    : Named num [1:100] 1.814 -0.203 0.631 -0.449 -2.427 ...
##   .. ..- attr(*, "names")= chr [1:100] "1" "2" "3" "4" ...
##   ..$ effects      : Named num [1:100] 1.389 1.013 0.465 -0.614 -2.592 ...
##   .. ..- attr(*, "names")= chr [1:100] "(Intercept)" "rt(100, 1)" "" "" ...
##   ..$ rank         : int 2
##   ..$ fitted.values: Named num [1:100] -0.136 -0.139 -0.135 -0.138 -0.137 ...
##   .. ..- attr(*, "names")= chr [1:100] "1" "2" "3" "4" ...
##   ..$ assign       : int [1:2] 0 1
##   ..$ qr           :List of 5
##   .. ..$ qr   : num [1:100, 1:2] -10 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 ...
##   .. .. ..- attr(*, "dimnames")=List of 2
##   .. .. .. ..$ : chr [1:100] "1" "2" "3" "4" ...
##   .. .. .. ..$ : chr [1:2] "(Intercept)" "rt(100, 1)"
##   .. .. ..- attr(*, "assign")= int [1:2] 0 1
##   .. ..$ qraux: num [1:2] 1.1 1
##   .. ..$ pivot: int [1:2] 1 2
##   .. ..$ tol  : num 1e-07
##   .. ..$ rank : int 2
##   .. ..- attr(*, "class")= chr "qr"
##   ..$ df.residual  : int 98
##   ..$ xlevels      : Named list()
##   ..$ call         : language lm(formula = rnorm(100) ~ 1 + rt(100, 1))
##   ..$ terms        :Classes 'terms', 'formula'  language rnorm(100) ~ 1 + rt(100, 1)
##   .. .. ..- attr(*, "variables")= language list(rnorm(100), rt(100, 1))
##   .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
##   .. .. .. ..- attr(*, "dimnames")=List of 2
##   .. .. .. .. ..$ : chr [1:2] "rnorm(100)" "rt(100, 1)"
##   .. .. .. .. ..$ : chr "rt(100, 1)"
##   .. .. ..- attr(*, "term.labels")= chr "rt(100, 1)"
##   .. .. ..- attr(*, "order")= int 1
##   .. .. ..- attr(*, "intercept")= int 1
##   .. .. ..- attr(*, "response")= int 1
##   .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
##   .. .. ..- attr(*, "predvars")= language list(rnorm(100), rt(100, 1))
##   .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
##   .. .. .. ..- attr(*, "names")= chr [1:2] "rnorm(100)" "rt(100, 1)"
##   ..$ model        :'data.frame':	100 obs. of  2 variables:
##   .. ..$ rnorm(100): num [1:100] 1.678 -0.343 0.497 -0.586 -2.564 ...
##   .. ..$ rt(100, 1): num [1:100] 0.157 -1.019 0.578 -0.404 -0.263 ...
##   .. ..- attr(*, "terms")=Classes 'terms', 'formula'  language rnorm(100) ~ 1 + rt(100, 1)
##   .. .. .. ..- attr(*, "variables")= language list(rnorm(100), rt(100, 1))
##   .. .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
##   .. .. .. .. ..- attr(*, "dimnames")=List of 2
##   .. .. .. .. .. ..$ : chr [1:2] "rnorm(100)" "rt(100, 1)"
##   .. .. .. .. .. ..$ : chr "rt(100, 1)"
##   .. .. .. ..- attr(*, "term.labels")= chr "rt(100, 1)"
##   .. .. .. ..- attr(*, "order")= int 1
##   .. .. .. ..- attr(*, "intercept")= int 1
##   .. .. .. ..- attr(*, "response")= int 1
##   .. .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
##   .. .. .. ..- attr(*, "predvars")= language list(rnorm(100), rt(100, 1))
##   .. .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
##   .. .. .. .. ..- attr(*, "names")= chr [1:2] "rnorm(100)" "rt(100, 1)"
##   ..- attr(*, "class")= chr "lm"
##  $ d: NULL
##  $ e:'data.frame':	5 obs. of  3 variables:
##   ..$ weight    : num [1:5] 84.5 72.6 75.7 94.8 71.3
##   ..$ height    : num [1:5] 86.5 71.8 77.2 84.9 75.4
##   ..$ backlength: num [1:5] 130 100 109 141 101
```

In the above example, `my_list` is an `R` list which contains 5 entries. The first entry called `a` is simply a number (or a vector of length 1). The second entry called `b` is a matrix. The third entry called `c` is a linear model. The fourth entry called `d` is a plot. Finally the fifth entry called `e` is a data frame. A list may be named (e.g. `a` to `e` above), or they need not be named.

What is clear is that a list is able to hold not just one type of object, but various kinds of objects. This makes it useful to hold information or results for retrieval later, or for saving. Complex functions usually output a list rather than just singular objects.

## Subsetting

In `R`, subsetting is done using square brackets:


```r
a <- 1:10
a[3]  # subset the 3rd element in the vector
## [1] 3
a[1:5]  # subset the first 5 elements
## [1] 1 2 3 4 5
a[a %% 2 == 0]  # subset even elements only (note: the '%%' operator gives the remainder)
## [1]  2  4  6  8 10
```

It is also possible to index matrices and dataframes


```r
mat[2, 3]  # get the (2,3) element from the matrix
## [1] 3
sheep[1, 2]  # get the first element in the 2nd column
## [1] 86.5
```

For data frames, you've seen that it is possible to use the `$` symbol to get the columns. From this, it is vectorised so it's further possible to subset using `[]`.


```r
sheep$height[1]  # the first sheep's height
## [1] 86.5
```

# R management

## The R help system

There are a number of different ways of getting help in R.

- If you have a query about a specific function then typing ? and then the functions name at the prompt will bring up the relevant help page.
- If your problem is of a more general nature, then typing help.start() will open up a window which allows you to browse for the information you want. The search engine on this page is very helpful for finding context specific information.

Alternatively, click on the 'Help' tab and search for a term that you would like help on. 

## Session management and visibility

All of the objects created during an R session are stored in a workspace in memory. We can see the objects that are currently in the workspace by using the command `objects()`. 
Notice the `()`, these are vital for the command to work.


```r
objects()
##  [1] "a"            "calc1"        "calc2"        "delete_files" "height"      
##  [6] "large"        "mat"          "meanweight"   "my_list"      "numbers"     
## [11] "numobs"       "people"       "sheep"        "small"        "total"       
## [16] "weight"
```

The information in the variables height and weight is currently encapsulated in the data frame sheep. 
We can tidy up our workspace by removing the height and weight variables (and various others that we are no longer interested in) using the `rm()` function. 
Do this and then check what is left.


```r
rm(height, weight, meanweight, numobs, total)
objects()
##  [1] "a"            "calc1"        "calc2"        "delete_files" "large"       
##  [6] "mat"          "my_list"      "numbers"      "people"       "sheep"       
## [11] "small"
```

The height and weight variables are now only accessible via the sheep data frame.


```r
## weight  # should get an error message
sheep$weight
## [1] 84.5 72.6 75.7 94.8 71.3
```

We can save the current workspace to file at any time.
The command to do so is `save.image()`.
However, RStudio makes it simple to save the current workspace.
Since we have created a project, workspace saving is handled for us, and we are prompted to save when we quit RStudio or close the project.

To inspect our working directory, use the `dir()` command. 
We can also look at the files under the 'Files' tab.

<!-- ## Properties of objects -->

<!-- We have already used the function `length()` to get the length of a vector.  -->
<!-- This can be applied to other objects. -->

<!-- ```{r, collapse = TRUE, eval = 2} -->
<!-- length(sheep2) -->
<!-- length(plot) -->
<!-- ``` -->

<!-- The length of a data frame is the number of variables it contains.  -->
<!-- The length of a function can be evaluated but is a bit meaningless.  -->
<!-- The function `mode()` gives us the mode of an object, while `attributes()` lists the non-intrinsic attributes. -->

<!-- ```{r, collapse = TRUE, eval = 2} -->
<!-- mode(sheep2) -->

<!-- attributes(sheep2) -->

<!-- attributes(plot) -->
<!-- ``` -->

<!-- Notice that, although both are of mode "list", data frames are of class "data.frame" while linear model objects are of class "lm".  -->
<!-- This influences the way they appear on screen when you type the identifier. -->

## Writing your own functions

Every function in R has three basic parts: a name, a body of code, and a set of arguments. 
To make your own function, you need to replicate these parts and store them in an R object, which you can do with the `function()` function. To do this, call `function()` and follow it with a pair of braces, `{}`:


```r
my_fun <- function(what.to.print = NULL) {
  if (is.null(what.to.print)) {
    print("Hello world!")
  } else {
    print(what.to.print)
  }
}
```

Here is a simple function to print some text to the R console. 
Try it out:


```r
my_fun()
```

```
## [1] "Hello world!"
```

```r
my_fun("All your base are belong to us")
```

```
## [1] "All your base are belong to us"
```

## Installing packages

R has a very diverse user-contributed package repository called the Comprehensive R Archive Network (CRAN).
Packages are nothing more than a collection of user-written functions that serve a particular purpose.
For example, there are packages for extending the graphics capabilities of R (`ggplot2`), random-effects modelling (`lme4`), latent variable modelling (`lavaan`), adn so on.
These aim to supplement base R with additional functionality.

"Official" packages are downloaded from CRAN and installed by users all over the world.
Packages that go are published on CRAN have gone through the necessary checks to ensure that they do not break when installed by R users.

To install packages from CRAN, the command is `install.packages()`. 
It is much easier, however, to use the GUI in RStudio to install packages.
Hit the 'Packages' tab, click install, then search for the package that you want.

Packages do not necessarily have to be installed from CRAN. 
You can create an R package yourself and distributed either in compressed form via e-mail or USB stick, or host it on a version-control software development site like GitHub. 
If you would like to know more about creating your own packages, read this [book](http://r-pkgs.had.co.nz) (R Packages by Hadley Wickham).

## Loading packages to be used

Installing packages makes them available for use, but does not load them when you start R. 
Every time you quit an R session and you start it back up again, you would have to load packages that you need all over again.

The command to load packages is `library(<pkg name>)`. 
For example


```r
library(tidyverse)
```

```
## ── Attaching packages ───────────────────────────────────────────────────────────── tidyverse 1.3.0 ──
```

```
## ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
## ✓ tibble  3.0.3     ✓ dplyr   1.0.0
## ✓ tidyr   1.1.0     ✓ stringr 1.4.0
## ✓ readr   1.3.1     ✓ forcats 0.5.0
```

```
## ── Conflicts ──────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

