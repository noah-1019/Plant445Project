
#' Fizz Buzz
#'
#' Fizz Buzz is a childrens game where a group of people take turns counting,
#' if the number you are about to say is divisible by 3 you shout Fizz and if it
#' is divisible by 5 you shout Buzz. If the number is divisible by both 3 and
#' 15 i.e. divisible by 15 you shout FizzBuzz.
#'
#' This function returns a list of length n containing numbers ranging from
#' 1 to n where if the number is divisible by 3,5, or 15 it replaces it with Fizz,
#' Buzz, and FizzBuzz respectivly
#'
#'
#' @param n An integer that must be greater than 1 and cannot be infinity.
#'
#' @return A character vector of length \code{n} containing integer values and characters.
#' @examples
#' FizzBuzz(12)
#' FizzBuzz(30)
#' @export

FizzBuzz <- function(n) {
  # Input validation
  if (!is.numeric(n) || n < 1 || floor(n) != n) {
    stop("Input must be a positive integer")
    # Checks to see if 1) the value is numberic
    # 2) The integer is positive
    # 3) The number is an integer
  }

  if(is.infinite(n)){
    stop("Input must not be infinity")
  }

  # Vector to store results
  results <- character(n)

  # Loop through numbers 1 to n
  for (i in 1:n) {
    # Initialize empty string for current number
    current <- ""

    # Check divisibility by 3
    if (i %% 3 == 0) {
      current <- paste0(current, "Fizz")
    }

    # Check divisibility by 5
    if (i %% 5 == 0) {
      current <- paste0(current, "Buzz")
    }

    # If number isn't divisible by 3 or 5, use the number itself
    if (current == "") {
      current <- as.character(i)
    }

    # Store result
    results[i] <- current
  }

  return(results)
}



