#' This function is intended to teach you how to test a function.
#' 
#' Furthermore, it teaches you how to comment a function in R. This function
#' receives three operand, returning the substraction of a and c if b is "Negative".
#' If b is "Positive", it returns the addition of a and c. 
#' @param a Numeric, first operand
#' @param b String, type of operation
#' @param c Numeric, second operand
#' @return (a-c) if b == "Negative", (a+c) if b == "Positive"
#' @examples 
#' my_awesome_function(2, "Negative", 3)
#' # -1
#' my_awesome_function(2, "Positive", 3)
#' # 5
my_awesome_function <- function(a, b, c) {
    if (b == "Negative") {
        return(a - c)
    } else if (b == "Positive") {
        return(a + c)
    }
}