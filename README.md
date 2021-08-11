
<!-- README.md is generated from README.Rmd. Please edit that file -->

## carbon

<!-- badges: start -->

[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![Codecov test
coverage](https://codecov.io/gh/VLucet/carbon/branch/main/graph/badge.svg)](https://codecov.io/gh/VLucet/carbon?branch=main)
[![R-CMD-check](https://github.com/VLucet/carbon/workflows/R-CMD-check/badge.svg)](https://github.com/VLucet/carbon/actions)
<!-- badges: end -->

The goal of carbon is to serve as an example package for the [CSEE 2021
workshop on R package development for
research](https://github.com/VLucet/R_pkg_dev_for_research_CSEE_2021).

### Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("VLucet/carbon")
```

### Example

This is a basic example:

``` r
library(carbon)
ppm_from_date("1996-10-29")
#> [1] 360.13
```
