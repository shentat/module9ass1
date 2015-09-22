---
title       : Module 9 Project on Developing Data Products
subtitle    : GCD Calculator
author      : Shen Tat
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<!-- slide 2 -->
## Project Tasks

### This assignment requires us to do the following:
* write a simple shiny application (and I've chosen to write a function for computing the gcd)
* deploy on RStudio's shiny server: ["https://www.shinyapps.io"](https://www.shinyapps.io)
* share the server.R amd ui.R code on github, ["https://github.com"](https://github.com)
* create a 5-slide presentation using slidify
* and finally to publish the slides on github

--- .class #id 

<!-- slide 3 -->
## GCD Calculator

### Definition of GCD

* it is the _greatest common divisor_ of two or more integers, when at least one of them is not zero, is the largest positive integer that divides the numbers without a remainder. 

* for example, the GCD of 8 and 12 is 4.

---

<!-- slide 4 -->
## Implementation of the GCD
<!-- function to compute the gcd for two numbers -->

```r
gcd <- function(x,y) {
    r <- x%%y;
    return(ifelse(r, gcd(y, r), y))
}
```
input: 8 and 12 give a gcd of

```r
gcd(8, 12)
```

```
## [1] 4
```

---

<!-- slide 5 -->
## Sharing of the GCD application
* I've written the application and published on the RStudio's shiny server: GCD Calculator, ["https://shentat.shinyapps.io/m9a1"](https://shentat.shinyapps.io/m9a1)

* The code is shared on github as server.R and ui.R: Source Code, ["https://github.com/shentat/module9ass1"](https://github.com/shentat/module9ass1)


