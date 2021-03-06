#' @title 
#' Calculation of Kurtosis
#'  
#' @description
#' This function calculates kurtosis of the input vector, matrix or data frame.
#' 
#' @usage ds.kurtosis(x, tojson = FALSE)
#' 
#' @param x A numeric vector, matrix or data frame.
#' @param tojson If TRUE the results are returned in json format
#' 
#' @details 
#' This function returns the kurtosis, based on a scaled version of the fourth moment, of numbers of the input data.
#' 
#' @author Aikaterini Chatzopoulou, Charalampos Bratsas
#' 
#' @seealso \code{\link{ds.skewness}}, \code{\link{ds.statistics}}, 
#' \code{\link{ds.analysis}}, \code{\link{open_spending.ds}}
#' 
#' @examples 
#' # with a matrix as an input
#' Matrix <- cbind(Uni05 = (1:200)/21, Norm = rnorm(200),
#'         `5T` = rt(200, df = 5), Gam2 = rgamma(200, shape = 2))
#' ds.kurtosis(Matrix, tojson = FALSE)
#' 
#' # with iris data frame as an input
#' ds.kurtosis(iris, tojson = FALSE)
#' 
#' # with a vector as an input and json output
#' vec <- as.vector(iris$Sepal.Width)
#' ds.kurtosis(vec, tojson = TRUE)
#' 
#' # OpenBudgets.eu Dataset Example:
#' ds.kurtosis(Wuppertal_df, tojson = FALSE)
#' 
#' @rdname ds.kurtosis
#' 
#' @export
#' 

ds.kurtosis <- function(x, tojson = FALSE) {
  
  data <- as.data.frame(x)
  
  # only numeric data
  data.num <- nums(data)
  
  # calculation
  mean <- apply(data.num, 2, mean)
  sd <- apply(data.num, 2, sd)
  sd4 <- sapply(sd, function(x) x^4)
  data.num[, 1:ncol(data.num)] <- sweep(data.num, 2, mean)
  mult <- data.num ^ 4
  sum <- apply(mult, 2, sum)
  m4 <- sum / nrow(data.num)
  kurtosis <- (m4/sd4) - 3
  
  if (tojson == TRUE) {
    kurtosis <- jsonlite::toJSON(kurtosis)
  }
  
  # Return
  return(kurtosis)
}
