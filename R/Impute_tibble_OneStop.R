


Impute_tibble_OneStop <- function(input) {

  install.packages("mice", repos = "http://cran.us.r-project.org")
  library(mice)

  names(input) <- Replace_NumbyChr(names(input))

  num_Cols <- input %>% dplyr::select(where(is.numeric))
  num_Col_names <- names(num_Cols)

  chr_Cols <- input %>% dplyr::select(where(is.character))
  chr_Col_names <- names(chr_Cols)


  ###### This part imputes the numeric columns of the dataset ######

  imputed_num_obj <- mice(num_Cols, m = 2, maxit = 50, seed = 500)
  imputed_num_dataset <- complete(imputed_num_obj)

  ###### This part imputes the numeric columns of the dataset ######

  str(chr_Cols)
  anyNA(chr_Cols)

  imputed_chr_dataset <- Impute_tibble(chr_Cols)

  return(cbind(imputed_num_dataset, imputed_chr_dataset))

}
