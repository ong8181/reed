
# reed: An R pacakge to load and explore eDNA-based ecological community monitoring data

<!-- badges: start -->
[![DOI](https://zenodo.org/badge/634494778.svg)](https://zenodo.org/badge/latestdoi/634494778)
<!-- badges: end -->

This R package enables loading and exploring eDNA-based ecological community monitoring data and associated data (e.g., climate and other ecological data). Current version includes data from:

- [Ushio (2022) _Proceedings of the Royal Society B_ 289:20212690](https://doi.org/10.1098/rspb.2021.2690)
- [Ushio et al. (2023a) _eLife_ 12:RP85795](https://doi.org/10.7554/eLife.85795)
- [Ushio et al. (2023b) _eLife_ 12:RP87202](https://doi.org/10.7554/eLife.87202)


All data were made available and archived along with the publications of the papers/preprints, for example at Github or Zenodo. The data included in `reed` are virtually the same with the archived versions. However, the data in `reed` will be maintained and may be updated if relevant pipelines and reference database are updated.

## Installation

You need to install [`phyloseq`](http://joey711.github.io/phyloseq/), [`speedyseq`](https://github.com/mikemc/speedyseq), and [`macamseq`](https://github.com/ong8181/macamseq) to use visualization functions of `reed` (data may be loaded without installing the packages). To install them, use the following commands:

```r
# Install phyloseq
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("phyloseq")

# Install speedyseq
# install.packages("remotes")
remotes::install_github("mikemc/speedyseq")

# Install macamseq
remotes::install_github("ong8181/macamseq")

```

You can install the development version of reed from [GitHub](https://github.com/) with:

```r
# install.packages("remotes")
remotes::install_github("ong8181/reed")
```

## Load data

You may use data by specifying the namespace. For example, `reed::ushio_2022_prsb_df_asvmat` shows the ASV table analyzed in Ushio (2022) _Proceedings B_.

You can load data to .GlobalEnv by executing `data(data_name)`. You may use `data_loader()` function to batch-loading data set to .GlobalEnv.

```r
# Batch-loading data set
data_loader("ushio_2022_prsb")
data_loader("ushio_2023a_elife")
data_loader("ushio_2023b_elife")
```

## Explore data: Example

There are some useful functions to explore data you loaded.

```r
# Load library
library(reed)
library(phyloseq)

# Batch-loading data set
data_loader("ushio_2022_prsb")

# Import to phyloseq
ps <- data_to_phyloseq("ushio_2022_prsb")

# Visualize phylum-level temporal-dynamics
(g1 <- view_ts_multitax(ps, "phylum"))

# Visualize a single taxon-level temporal-dynamics
(g2 <- view_ts_singletax(ps, "phylum", "Proteobacteria"))
```

## Dependencies
- McLaren M (2020) "mikemc/speedyseq: speedyseq v0.2.0" https://doi.org/10.5281/zenodo.3923184 https://github.com/mikemc/speedyseq
- McMurdie and Holmes (2013) phyloseq: An R package for reproducible interactive analysis and graphics of microbiome census data. PLoS ONE 8(4):e61217 https://doi.org/10.1371/journal.pone.0061217


## Citation

If you use data, please cite appropriate references.

#### Package

- Ushio M (2023) reed: A collection of data sets useful for community ecology. R package version 0.7.0, https://github.com/ong8181/reed

#### Data set
- Ushio M (2022) Interaction capacity as a potential driver of community diversity. _Proceedings of the Royal Society B_ 289: 20212690 https://doi.org/10.1098/rspb.2021.2690

- Ushio M, Sado T, Fukuchi T, Sasano S, Masuda R, Osada Y, Miya M (2023) Temperature sensitivity of the interspecific interaction strength of coastal marine fish communities. _eLife_ 12:RP85795 https://doi.org/10.7554/eLife.85795

- Ushio M, Saito H, Tojo M, Nagano AJ (2023) An ecological network approach for detecting and validating influential organisms for rice growth. _eLife_ 12:RP87202 https://doi.org/10.7554/eLife.87202

