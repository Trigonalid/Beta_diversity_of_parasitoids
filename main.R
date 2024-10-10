
# Load necessary libraries
library(tidyverse)
library(dplyr)
library(writexl)
library(ggplot2)

#----------------------------------------------------------#
# 1. Load data -----

data_master <-
  readr::read_delim(
    here::here(
      "DATA/MASTER.csv"
    )
  ) %>%
  tibble::as_tibble()



#----------------------------------------------------------#
# 2. Data wrangling -----
#----------------------------------------------------------#

data_work <-
  data_master %>%
  dplyr::select(
    locality,
    plant,
    CAT_sp,
    PAR_sp
  )

