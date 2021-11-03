
# OnewayR
![](oneway.png)


The goal of onewayR is to conduct analysis of variance and to plot, print
and summarize the results of the analysis

## Installation

``` r
install.packages("onewayR")
```

## Example

This is a basic example which shows you show to conduct the 
analysis and the print, plot and summarize the results
``` r
library(onewayR)
oneway(mpg ~ wt, mtcars)
oneway <- oneway(mpg ~ wt, mtcars)
plot.oneway(oneway)
print.oneway(oneway)
summary.oneway(oneway)
```
### Hope you enjoy the package and have a great day!


![sun](sun-waving.gif)


