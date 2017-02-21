
##
#' S4 class "door"
#' 
#' An S4 class to represent a "Let's Make a Deal!" door
#' 
#' @slot number A length one numeric vector that should be a natural number
#'   between one and three inclusive

setClass('door',
         slots=c(number='numeric')
)

## Validity function for S4 class "door":

setValidity('door',
            function(object){
              # Note that the number must be 1, 2, or 3 to be valid;
              # that is, even if the number is some other integer it won't work
              # I did it this way because the game has only three doors
              if (length(object@number) > 1) {
                return('Choose only one door number!')
              }
              if (!(object@number %in% 1:3)) {
                return('@number is not a valid door number')
              }
            }
)

##
#' Initialize "door"
#' 
#' Create an instance of the S4 class "door"
#' 

setMethod("initialize",
          "door",
          function(.Object, ...) {
            value = callNextMethod()
            validObject(value)
            return(value)
          }
)

##
#' Generic function "PlayGame"
#' 
#' Creates a generic function "PlayGame"

setGeneric('PlayGame',
           function(object='door'){
             standardGeneric('PlayGame')
           }
)

##
#' "PlayGame" method for "door" class
#' 
#' S4 "PlayGame" method for "door" class
#' 
#' Let's make a deal! \code{PlayGame} randomly chooses a natural number
#' between one and three inclusive that determines which \code{door} value is
#' a winner. If it matches the input \code{door} value, the user is informed
#' she has won a brand new car! If it does not match the input \code{door}
#' value, the user is informed she is not a winner.
#' 
#' @param object a \code{door} object
#' 
#' @return If \code{x} is equal to the number chosen by \code{PlayGame},
#'   a congratulatory message is printed informing the user she has won.
#'   Otherwise, a message is printed informing the user she has not won.
#'
#' @author JB Duck-Mayr

setMethod('PlayGame',
          'door',
          function(object){
            prizeDoor <- sample(1:3, 1)
            if (object@number == prizeDoor) {
              print("Congratualations! You've just won a brand new car!")
            }
            else {
              print("Oh no... looks like you're not a winner!")
            }
          }
)