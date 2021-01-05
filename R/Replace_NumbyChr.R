

Replace_NumbyChr <- function(input) {

  if(!is.character(input)) stop("input must be a character string")

  input <- gsub( '0', 'Zero', input)
  input <- gsub( '1', 'First', input)
  input <- gsub( '2', 'Second', input)
  input <- gsub( '3', 'Third', input)
  input <- gsub( '4', 'Fourth', input)

  input <- gsub( '5', 'Fifth', input)
  input <- gsub( '6', 'Sixth', input)
  input <- gsub( '7', 'Seventh', input)
  input <- gsub( '8', 'Eighth', input)
  input <- gsub( '9', 'Ninth', input)

  return(input)

}
