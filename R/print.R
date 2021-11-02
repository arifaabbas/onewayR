#'@title Prints results
#'@description
#'This function prints the result of the analysis
#'
#'@param x a numeric vector
#'@param ... a numeric vector
#'
#'@return a numeric vector
#'@export
#'@examples
#'add(2,3)
#'add(mtcars$mpg, mtcars$hp)

print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n",
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n",
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}
