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
  if (!(x %in% 1:3)) {
    stop(x, ' is not a valid door number', call.=FALSE)
  }
  class(x) <- 'door'
  return(x)
}