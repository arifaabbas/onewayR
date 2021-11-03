#'@title Prints the results
#'@description
#'This function prints the result of the analysis oneway
#'
#'@param x object class of type oneway
#'@param ... additional parameters that are being passed to the print function
#'
#'@return the results of the analysis oneway printed in the console
#'@export
#'@examples
#'print.oneway(oneway,...)


print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n",
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n",
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}

