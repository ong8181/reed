#' @title Data loader
#' @description \code{data_loader} Batch loading data set.
#' @param dataset_name Character. 'ushio_2022_prsb' or 'ushio_2023_elife'.
#' @export
#' @examples
#' # data_loader()
data_loader <- function(dataset_name) {
  # Batch loading Ushio (2022) Proceedings B
  if (dataset_name == "ushio_2022_prsb") {
    data("ushio_2022_prsb_df_asvmat")
    data("ushio_2022_prsb_df_climate")
    data("ushio_2022_prsb_df_sample")
    data("ushio_2022_prsb_df_taxa")
    data("ushio_2022_prsb_psobj")
  }

  # Batch loading Ushio et al. (2023) eLife
  if (dataset_name == "ushio_2023_elife") {
    data("ushio_2023_elife_df_asvmat")
    data("ushio_2023_elife_df_sample")
    data("ushio_2023_elife_df_taxa")
    data("ushio_2023_elife_psobj")
    data("ushio_2023_elife_df_rice2017")
    data("ushio_2023_elife_df_rice2019_gr")
    data("ushio_2023_elife_df_rice2019_hd")
    data("ushio_2023_elife_df_rice2019_yd")
  }
}

