% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nums.R
\name{nums}
\alias{nums}
\title{Select the numeric columns of a given dataset}
\usage{
nums(data)
}
\arguments{
\item{data}{A numeric vector, matrix or data frame.}
}
\value{
This function returns a data frame with the numeric columns of the input dataset.
}
\description{
Extract and return a data frame with the columns that include only numeric values
}
\examples{
# with data frame as input
nums(iris)

# with vector as input
vec <- as.vector(iris$Sepal.Width)
nums(vec)

# with matrix as input
Matrix <- cbind(Uni05 = (1:200)/21, Norm = rnorm(200),
        `5T` = rt(200, df = 5), Gam2 = rgamma(200, shape = 2))
nums(Matrix)

# OpenBudgets.eu Dataset Example:
head(nums(Wuppertal_df))

}
\author{
Kleanthis Koupidis
}
