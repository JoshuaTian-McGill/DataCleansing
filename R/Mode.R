
#' Return the non-NA statistical mode of a character/numeric string.

Mode <- function(input) {
  uinput <- unique(input)
  uinput_noNA <- uinput[!is.na(uinput)]
  uinput_noNA[which.max(tabulate(match(input, uinput_noNA)))]
}
