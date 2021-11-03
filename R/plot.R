#'@title Plots the results
#'@description
#'This function plots the results of the analysis oneway
#'
#'@param x object class of type oneway
#'@param color input a color of choice using col = "x". If not specified the
#'default color is skyblue.
#'@param ... additional parameters that are being passed to the print function
#'
#'
#'@return  boxplot plotting the results of the analysis oneway.
#'@export
#'@examples
#'plot.oneway(oneway, ...)
#'plot.oneway(oneway, col = "red", ...)


plot.oneway <- function(x, col="skyblue", ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  boxplot(x$anova$terms, x$anova$model, ...)
}

