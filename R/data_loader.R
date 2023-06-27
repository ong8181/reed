#' @title Data loader
#' @description \code{data_loader} Batch loading data set.
#' @param dataset_name Character. 'ushio_2022_prsb', 'ushio_2023a_elife' or 'ushio_2023b_elife'.
#' @export
#' @examples
#' # data_loader()
data_loader <- function(dataset_name) {
  dataset_list <- c("ushio_2022_prsb", "ushio_2023a_elife", "ushio_2023b_elife")
    # Check arguments
  if (dataset_name %in% dataset_list) {
    stop("Invalid dataset name!")
  }

    # Batch loading Ushio (2022) Proceedings B
  if (dataset_name == dataset_list[1]) {
    utils::data("ushio_2022_prsb_df_asvtab_copy")
    utils::data("ushio_2022_prsb_df_climate")
    utils::data("ushio_2022_prsb_df_sample")
    utils::data("ushio_2022_prsb_df_taxa")
    # Compile date
    ushio_2022_prsb_df_sample$plot <- factor(ushio_2022_prsb_df_sample$plot)
    ushio_2022_prsb_df_sample$date <- lubridate::ymd(ushio_2022_prsb_df_sample$date)
  }

  # Batch loading Ushio et al. (2023a) eLife
  if (dataset_name == dataset_list[2]) {
    utils::data("ushio_2023a_elife_df_asvtab_copy")
    utils::data("ushio_2023a_elife_df_asvtab_read")
    utils::data("ushio_2023a_elife_df_sample")
    utils::data("ushio_2023a_elife_df_taxa")
    # Compile date
    ushio_2023a_elife_df_sample$site_code <- factor(ushio_2023a_elife_df_sample$site_code)
    ushio_2023a_elife_df_sample$date <- lubridate::ymd(ushio_2023a_elife_df_sample$date)
  }

  # Batch loading Ushio et al. (2023b) eLife
  if (dataset_name == dataset_list[3]) {
    utils::data("ushio_2023b_elife_df_asvtab_copy")
    utils::data("ushio_2023b_elife_df_sample")
    utils::data("ushio_2023b_elife_df_taxa")
    utils::data("ushio_2023b_elife_df_rice2017")
    utils::data("ushio_2023b_elife_df_climate2019")
    utils::data("ushio_2023b_elife_df_rice2019_growth")
    utils::data("ushio_2023b_elife_df_rice2019_head")
    utils::data("ushio_2023b_elife_df_rice2019_yield")
    # Compile date
    ushio_2023b_elife_df_sample$plot <- factor(ushio_2023b_elife_df_sample$plot)
    ushio_2023b_elife_df_sample$date <- lubridate::ymd(ushio_2023b_elife_df_sample$date)
  }
}

