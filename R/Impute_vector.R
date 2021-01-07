
#' Impute a vector with a designated value
#'
#' @param input1 is the one-column data frame to be imputed
#' @param input2 is the designated value to impute input1
#' @return return a one-column data frame free of NAs
#' @export

Impute_vector <- function(input1, input2) {

  if(!is.data.frame(input1)) stop("input1 must be a data frame")
  if(!is.character(input2)) stop("input2 must be a character")
  if(length(input2)!=1) stop("input2 must be ONE character")

  df_col <- input1
  imputing_val <- input2

  df_col[which(is.na(df_col) == TRUE),] <- imputing_val

  return(df_col)

}
