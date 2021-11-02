#'@title Plots results
#'@description
#'This function prints the results of the analysis
#'
#'@param x ???? If not class "oneway" the function
#'will stop and state that class must be oneway.
#'@param color input a color of choice using col = "x". If not specified the
#'default color is skyblue.
#'@param ... parameters passed to the oneway function.
#'
#'
#'@return a boxplot ???
#'@export
#'@examples
#'plot.oneway(x, col = "" , ...) ???


plot.oneway <- function(x, col="skyblue", ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  boxplot(x$anova$terms, x$anova$model, ...)
}
