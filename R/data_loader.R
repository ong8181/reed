#' @title Data loader
#' @description \code{data_loader} Batch loading data set.
#' @param dataset_name Character. 'ushio_2022_prsb', 'ushio_2023a_elife' or 'ushio_2023b_elife'.
#' @export
#' @examples
#' # data_loader()
data_loader <- function(dataset_name) {
  # Batch loading Ushio (2022) Proceedings B
  if (dataset_name == "ushio_2022_prsb") {
    data("ushio_2022_prsb_df_asvtab_copy")
    data("ushio_2022_prsb_df_climate")
    data("ushio_2022_prsb_df_sample")
    data("ushio_2022_prsb_df_taxa")
  }

  # Batch loading Ushio et al. (2023a) eLife
  if (dataset_name == "ushio_2023a_elife") {
    data("ushio_2023a_elife_df_asvtab_copy")
    data("ushio_2023a_elife_df_asvtab_read")
    data("ushio_2023a_elife_df_sample")
    data("ushio_2023a_elife_df_taxa")
  }

  # Batch loading Ushio et al. (2023b) eLife
  if (dataset_name == "ushio_2023b_elife") {
    data("ushio_2023b_elife_df_asvtab_copy")
    data("ushio_2023b_elife_df_sample")
    data("ushio_2023b_elife_df_taxa")
    data("ushio_2023b_elife_df_rice2017")
    data("ushio_2023b_elife_df_climate2019")
    data("ushio_2023b_elife_df_rice2019_growth")
    data("ushio_2023b_elife_df_rice2019_head")
    data("ushio_2023b_elife_df_rice2019_yield")
  }
}

