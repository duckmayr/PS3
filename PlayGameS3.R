
##
#' Create an object of class \code{door}
#'
#' This function creates an object of S3 class \code{door}.
#' 
#' @param x a natural number between one and three inclusive
#'
#' @return If \code{x} is a natural number between one and three inclusive,
#'   \code{x} is returned with its class changed to \code{door}.
#'   If \code{x} is not a natural number between one and three inclusive,
#'   an error is thrown with a message informing the user that \code{x} is not
#'   a valid \code{door} number.
#' 
#' @seealso \code{\link{PlayGame.Door}}
#'
#' @author JB Duck-Mayr
#'
Door <- function(x){
  if (length(x) > 1) {
    stop('Choose only one door number!', call.=FALSE)
  }
  if (!(x %in% 1:3)) {
    stop(x, ' is not a valid door number', call.=FALSE)
  }
  class(x) <- 'door'
  return(x)
}

##
#' Generic function for \code{PlayGame}
#'
#' This is the generic function for \code{PlayGame}
#' 
#' @param x an object used to select a method
#' 
#' @seealso \code{\link{PlayGame.Door}}
#'
#' @author JB Duck-Mayr
#'
PlayGame <- function(x){
  UseMethod('PlayGame')
}

#
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
