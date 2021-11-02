#'@title Plots the results
#'
#'@description
#'This function prints a summary of the analysis
#'
#'@param x  ?? If not class "oneway" the function
#'will stop and state that class must be oneway.
#'@param ... parameters passed to the oneway function.
#'
#'
#'@return a boxplot ?????
#'@export
#'
#'@examples
#'plot.oneway(x, col = "" , ...) ???


summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}
