
#' Display the NA information in a data frame
#' Display NA percentages of columns in descending order
#'
#' @param input is a data frame
#' @return a data frame with 2 columns: variable name, NA percentage
#' @export

Display_NACol_order <- function(input) {

  if(!is.data.frame(input)) stop("input must be a data frame")

  NA_per_Col <- data.frame(names(input), colMeans(is.na(input)))

  colnames(NA_per_Col)[1] <- "Col_name"
  colnames(NA_per_Col)[2] <- "ColNA_Percentage"

  NA_per_Col[order(NA_per_Col$ColNA_Percentage, decreasing = TRUE),]

}


