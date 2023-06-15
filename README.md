
# reed: An R pacakge to load and explore eDNA-based ecological community monitoring data

<!-- badges: start -->
<!-- badges: end -->

This R package enables loading and exploring eDNA-based ecological community monitoring data and associated data (e.g., climate and other ecological data). Current version includes data from Ushio (2022) _Proceedings of the Royal Society B_ and Ushio et al. (2023) _eLife_. `reed` is built to facilitate the reuse of the data for community ecology studies.

## Installation

You can install the development version of reed from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ong8181/reed")
```

## Examples

You can load data by executing `data(data_name)`. Alternatively, you may use `data_loader()` function to batch-loading data set.

```r
# Batch-loading data set
data_loader("ushio_2022_prsb")
data_loader("ushio_2023_elife")
```
