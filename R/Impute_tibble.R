
#' Impute an all-character tibble
#'
#' @param input is a tibble containing NA's
#' @return is a NA-free tibble
#' @export



Impute_tibble <- function(input) {

  if(!is_tibble(input)) stop("input must be a tibble")

  chr_df <- input
  chr_df_modes <- sapply(chr_df, Mode)

  nc <- ncol(chr_df)

  for(i in 1:nc) {
    if(anyNA(chr_df[, i])){
      chr_df[, i] <- Impute_vector(chr_df[, i], chr_df_modes[i])
    }
  }

  return(chr_df)

}
