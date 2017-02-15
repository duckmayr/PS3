##
#' \code{PlayGame} method for class \code{door}
#'
#' This is the S3 \code{PlayGame} method for class \code{door}.
#' 
#' Let's make a deal! \code{PlayGame.Door} randomly chooses a natural number
#' between one and three inclusive that determines which \code{door} value is
#' a winner. If it matches the input \code{door} value, the user is informed
#' she has won a brand new car! If it does not match the input \code{door}
#' value, the user is informed she is not a winner.
#' 
#' @param x a \code{door} object
#'
#' @return If \code{x} is equal to the number chosen by \code{PlayGame.Door},
#'   a congratulatory message is printed informing the user she has won.
#'   Otherwise, a message is printed informing the user she has not won.
#'   
#' @seealso \code{\link{Door}}
#'
#' @author JB Duck-Mayr
#'
PlayGame.door <- function(x){
  prizeDoor <- sample(1:3, 1)
  if (x == prizeDoor) {
    print("Congratualations! You've just won a brand new car!")
  }
  else {
    print("Oh no... looks like you're not a winner!")
  }
}