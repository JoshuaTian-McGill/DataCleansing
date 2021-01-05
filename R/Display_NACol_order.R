

Display_NACol_order <- function(input) {

  if(!is.data.frame(input)) stop("input must be a data frame")

  NA_per_Col <- data.frame(names(input), colMeans(is.na(input)))

  colnames(NA_per_Col)[1] <- "Col_name"
  colnames(NA_per_Col)[2] <- "ColNA_Percentage"

  NA_per_Col[order(NA_per_Col$ColNA_Percentage, decreasing = TRUE),]

}


