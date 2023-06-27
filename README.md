
# reed: An R pacakge to load and explore eDNA-based ecological community monitoring data

<!-- badges: start -->
<!-- badges: end -->

This R package enables loading and exploring eDNA-based ecological community monitoring data and associated data (e.g., climate and other ecological data). Current version includes data from:

- [Ushio (2022) _Proceedings of the Royal Society B_](https://doi.org/10.1098/rspb.2021.2690)
- [Ushio et al. (2023a) _eLife_](https://doi.org/10.7554/eLife.85795.2)
- [Ushio et al. (2023b) _eLife_](https://doi.org/10.7554/eLife.87202.1).


`reed` is built to facilitate the reuse of the data for community ecology studies.

## Installation

You can install the development version of reed from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ong8181/reed")
```

## Load data

You may use data by specifying the namespace. For example, `reed::ushio_2022_prsb_df_asvmat` shows the ASV table analyzed in Ushio (2022) _Proceedings B_.

You can load data to .GlobalEnv by executing `data(data_name)`. Alternatively, you may use `data_loader()` function to batch-loading data set to .GlobalEnv.

```r
# Batch-loading data set
data_loader("ushio_2022_prsb")
data_loader("ushio_2023_elife")
```

## Explore data

Currently under development.


## Citation

If you use data, please cite appropriate references.

#### Package

- Ushio M (2023) reed: A collection of data sets useful for community ecology. R package version 0.0.2, https://github.com/ong8181/reed

#### Data set
- Ushio M (2022) Interaction capacity as a potential driver of community diversity. _Proceedings of the Royal Society B_ 289: 20212690 https://doi.org/10.1098/rspb.2021.2690

- Ushio M, Saito H, Tojo M, Nagano AJ (2023) Detecting and validating influential organisms for rice growth: An ecological network approach. _eLife_ https://doi.org/10.7554/eLife.87202.1
