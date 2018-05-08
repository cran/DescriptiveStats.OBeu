This package can generally be used to extract visualization parameters
convert them to JSON format and use them as input in a different
graphical interface. Most functions can have general use out of the
[OpenBudgets.eu data model](https://github.com/openbudgets/data-model).
You can see detailed information
[here](https://okgreece.github.io/DescriptiveStats.OBeu/).

    # install DescriptiveStats.OBeu- cran stable version
    install.packages(DescriptiveStats.OBeu) 
    # or
    # alternatively install the development version from github
    devtools::install_github("okgreece/DescriptiveStats.OBeu")

Load library `DescriptiveStats.OBeu`

    library(DescriptiveStats.OBeu)

Descriptive Statistics in a call
================================

`ds.analysis` is used to estimate *minimum*, *maximum*, *range*, *mean*,
*median*, *first and third quantiles*, *variance*, *standart deviation*,
*skewness* and *kurtosis*, *boxplot*, *histogram parameters* needed for
visualization of numeric variables and *frequencies* of factor variables
of a given vector, matrix or data frame of data.

`ds.analysis` returns by default a list object, we set `tojson`
parameter `TRUE`, `outliers` parameter `FALSE`,
`fr.select = "Produktbereich"`. Τhere is one numeric variable,
correlation will be empty.

    wuppertalanalysis = ds.analysis(Wuppertal_df,outliers=FALSE, fr.select = "Produktbereich", tojson=TRUE) # json string format
    jsonlite::prettify(wuppertalanalysis) # use prettify of jsonlite library to add indentation to the returned JSON string

`ds.analysis` uses internally the functions
`ds.statistics`,`ds.hist`,`ds.boxplot`,`ds.correlation` and
`ds.frequency`. However, these functions can be used independently and
depends on the user requirements (see package manual or vignettes).

Descriptive Statistics on OpenBudgets.eu platform
=================================================

`open_spending.ds` is designed to estimate and return the basic
descriptive measures, the correlation and the boxplot parameters of all
the numerical variables and the frequencies of all factor variables of
[OpenBudgets.eu](http://openbudgets.eu/) datasets.

The input data must be a JSON link according to the [OpenBudgets.eu data
model](https://github.com/openbudgets/data-model). There are different
parameters that a user could specify, e.g. `dimensions`,
`measured.dimensions` and `amounts` should be defined by the user, to
form the dimensions of the dataset. Then the basic descriptive measures
of tendency and spread, boxplot and histogram parameters are estimated
in order to describe and visualize the distribution characteristics of
the desired dataset.

`open_spending.ds` estimates and returns the json data that are
described with the [OpenBudgets.eu data
model](https://github.com/openbudgets/data-model), using `ds.analysis`
function.

    descript = open_spending.ds(
      json_data =  Wuppertal_openspending, 
      dimensions ="functional_classification_3.Produktgruppe|date_2.Year",
      amounts = "Amount"
      )
    # Pretty output using prettify of jsonlite library
    jsonlite::prettify(descript,indent = 2)
