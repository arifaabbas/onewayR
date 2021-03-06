#'@title Performs a oneway analysis
#'
#'@description
#'This function performs a oneway analysis of variance and returns a object of
#'class "oneway"
#'
#'@param formula argument that takes an dependent variable ~ independent variable
#'@param data the data set that the dependent and independent variable will be taken from
#'
#'@return a object of class "oneway"
#'@export
#'
#'@examples
#'oneway(mpg ~ wt, mtcars)

oneway <- function(formula, data) {

  # listwise deletion of missing values
  data_complete <- na.omit(data)

  # anova
  fit <- lm(formula, data_complete)

  stats <-  aggregate(formula,
                     data,
                     function(x) c(n = length(x), mean = mean(x), sd = sd(x)))


  result <- list(anova = fit, summarystats = stats)
  class(result) <- c("oneway", "list")
  return(result)

}


