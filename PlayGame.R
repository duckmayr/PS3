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