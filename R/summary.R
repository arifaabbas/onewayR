#'@title Prints a summary
#'
#'@description
#'This function prints a summary of the analysis oneway.
#'
#'@param x object class of type oneway
#'@param ... additional parameters that are being passed to the print function.
#'
#'
#'@return a data frame that summarizes the analysis of oneway.
#'@export
#'
#'@examples
#'plot.oneway(oneway, ...)



summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}

