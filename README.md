[![Build
Status](https://travis-ci.org/okgreece/DescriptiveStats.OBeu.svg?branch=master)](https://travis-ci.org/okgreece/DescriptiveStats.OBeu)
[![Pending
Pull-Requests](http://githubbadges.herokuapp.com/okgreece/DescriptiveStats.OBeu/pulls.svg)](https://github.com/okgreece/DescriptiveStats.OBeu/pulls)
[![Github
Issues](http://githubbadges.herokuapp.com/okgreece/DescriptiveStats.OBeu/issues.svg)](https://github.com/okgreece/DescriptiveStats.OBeu/issues)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![packageversion](https://img.shields.io/badge/Package%20version-1.2.0-orange.svg?style=flat-square)](commits/master)
[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.1-6666ff.svg)](https://cran.r-project.org/)
[![Licence](https://img.shields.io/badge/licence-GPL--2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html)

This document describes the use of the functions implemented in
DescriptiveStats.OBeu package in OpenCPU environment.

Install:
========

Load *devtools* library or install it if not already:

    install.packages("devtools")

Then install *DescriptiveStats.OBeu* from
[Github](https://github.com/okgreece/DescriptiveStats.OBeu)

    devtools::install_github("okgreece/DescriptiveStats.OBeu")

And load the library

    library(DescriptiveStats.OBeu)

### R Example

The package includes the following data:

    # 1. a link to json file-openspending
    sample_json_link_openspending

    ## [1] "http://next.openspending.org/api/3/cubes/21260d070eb5d63a121ea4c400dafbbb:apbn_fungsi_2016/facts?pagesize=20"

OpenCPU Short Guide - DescriptiveStats.OBeu
===========================================

Go to: <http://okfnrg.math.auth.gr/ocpu/test/>

How to use functions:
---------------------

Type to the endpoint:

     ../library/ {name of the library} /R/ {function}

If you want to see the function parameters you should:

-   Select Method:

<!-- -->

    Get

and in order to run a function you should:

-   Select Method:

<!-- -->

    Post

The you can push Ajax Request.

Example \#1 - Open Spending-DescriptiveStats
--------------------------------------------

1 Go to <http://okfnrg.math.auth.gr/ocpu/test/>

2 Copy and paste the following function to the endpoint

    ../library/DescriptiveStats.OBeu/R/open_spending.ds

3 *Select Method*:

    Post

4 **Add parameters** and set:

Define the input time series data:

-   *Param Name*:

<!-- -->

    json_data

-   *Param Value* -the **URL** of json data:

<!-- -->

    # a link with json file-openspending
    "http://next.openspending.org/api/3/cubes/21260d070eb5d63a121ea4c400dafbbb:apbn_fungsi_2016/facts?pagesize=20" 
    # or use a dataset from the package sample_json_link_openspending or 
    # Wuppertal_openspending

Define the dimensions:

-   *Param Name*:

<!-- -->

    dimensions

-   *Param Value*:

<!-- -->

    "functional_classification_2.Function|functional_classification_2.Code"

Define the amount parameter:

-   *Param Name*:

<!-- -->

    amounts 

-   *Param Value*:

<!-- -->

    "Revised"

Define the level of boxplot outliers (*optional*),default is 1.5:

-   *Param Name*:

<!-- -->

    coef.outl

-   *Param Value*:

<!-- -->

    0.8

Define TRUE/FALSE if outliers should be returned (*optional*),default is
TRUE:

-   *Param Name*:

<!-- -->

    box.outliers

-   *Param Value*:

<!-- -->

    TRUE

Define box width in boxplot (*optional*),default is 0.25\*sqrt(n):

-   *Param Name*:

<!-- -->

    box.wdth

-   *Param Value*:

<!-- -->

    0.2

Define the correlation method (*cor.method*), default is *"pearson"*:

-   *Param Name*:

<!-- -->

    cor.method

-   *Param Value* -for example:

<!-- -->

    "spearman" 

5 Ready! Click on **Ajax request**!

6 To see the results:

copy the */ocpu/tmp/{this}/R/.val* (the first choice on the right panel)

7 and paste <http://okfnrg.math.auth.gr/ocpu/tmp/> {this} /R/.val on a
new tab.

Further Details:
================

-   <https://www.opencpu.org/help.html>

-   <https://www.opencpu.org/jslib.html>

Github:
=======

-   <https://github.com/okgreece/DescriptiveStats.OBeu>