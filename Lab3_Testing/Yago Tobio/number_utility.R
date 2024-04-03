#' Returns the absolute difference of two numbers
#'
#' @param a A number
#' @param b A number
#' @return absolute(a-b)
#' @examples
#' get_abs_difference(1, 11)
get_abs_difference <- function(a, b){
    if (!is.numeric(a)) {
        stop("Parameter a must be numeric")
    }
    if (!is.numeric(b)) {
        stop("Parameter b must be numeric")
    }
    abs_difference <- abs(a-b)
    return(abs_difference)
}

#' Returns the inverse of the absolute difference of two numbers
#'
#' @param a A number
#' @param b A number
#' @return 1/absolute(a-b)
#' @examples
#' inverse_abs_difference(1, 11)
inverse_abs_difference <- function(a, b){
    if (!is.numeric(a)) {
        stop("Parameter a must be numeric")
    }
    if (!is.numeric(b)) {
        stop("Parameter b must be numeric")
    }
    abs_difference <- get_abs_difference(a,b)
    stopifnot(abs_difference != 0)
    return(1/abs_difference)
}

#' Returns the absolute value of multiplication of two numbers
#'
#' @param a A number
#' @param b A number
#' @return absolute(a*b)
#' @examples
#' get_abs_product(1, 11)
get_abs_product <- function(a, b){
    if (!is.numeric(a)) {
        stop("Parameter a must be numeric")
    }
    if (!is.numeric(b)) {
        stop("Parameter b must be numeric")
    }
    abs_product <- abs(a*b)
    return(abs_product)
}