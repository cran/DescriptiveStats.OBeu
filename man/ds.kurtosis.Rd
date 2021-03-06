% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ds.kurtosis.R
\name{ds.kurtosis}
\alias{ds.kurtosis}
\title{Calculation of Kurtosis}
\usage{
ds.kurtosis(x, tojson = FALSE)
}
\arguments{
\item{x}{A numeric vector, matrix or data frame.}

\item{tojson}{If TRUE the results are returned in json format}
}
\description{
This function calculates kurtosis of the input vector, matrix or data frame.
}
\details{
This function returns the kurtosis, based on a scaled version of the fourth moment, of numbers of the input data.
}
\examples{
# with a matrix as an input
Matrix <- cbind(Uni05 = (1:200)/21, Norm = rnorm(200),
        `5T` = rt(200, df = 5), Gam2 = rgamma(200, shape = 2))
ds.kurtosis(Matrix, tojson = FALSE)

# with iris data frame as an input
ds.kurtosis(iris, tojson = FALSE)

# with a vector as an input and json output
vec <- as.vector(iris$Sepal.Width)
ds.kurtosis(vec, tojson = TRUE)

# OpenBudgets.eu Dataset Example:
ds.kurtosis(Wuppertal_df, tojson = FALSE)

}
\seealso{
\code{\link{ds.skewness}}, \code{\link{ds.statistics}}, 
\code{\link{ds.analysis}}, \code{\link{open_spending.ds}}
}
\author{
Aikaterini Chatzopoulou, Charalampos Bratsas
}
