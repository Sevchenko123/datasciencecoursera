---
title       : Title
subtitle    : subtitle
author      : me        
job         : internet
framework   : revealjs    # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : default    # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Data Products Project
 
**Samir P. Yelne**

---

### Application Detail

This application generates a simple linear regression model between mpg, the dependent variable and any other variable which the user can choose as an independent variable. 

The application can be viewed at :-

* Rstudio's Shiny Server : [Simple Linear Regression App] (https://samiryelne.shinyapps.io/Shiny_Project/)

---

### Dataset Information

The **mtcars** dataset comprises of fuel consumption and other ten aspects of automobile design and performance for 32 automobiles, 1973–74 models. 

The names of the columns in the dataset are :-

```
##  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
## [11] "carb"
```

---

### How to use the app

* The user is required to choose the independent variable. The dependent variable is always mpg.
* As soon as the user selects the independent variable, a linear regression model plot is shown.
* The user could change the independent variable, in such case the plot will be updated.
* The application also shows the summary statistics of the selected variable.

---

### Example of lm() function output for Simple Linear Regression 

```
## 
## Call:
## lm(formula = mpg ~ hp, data = mtcars)
## 
## Coefficients:
## (Intercept)           hp  
##    30.09886     -0.06823
```


