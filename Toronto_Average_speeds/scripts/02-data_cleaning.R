#### Preamble ####
# Purpose: Cleans the downloaded data from OpenDataToronto
# Author: Kevin Shao
# Date: 27 September 2024
# Contact: kevin.shao@mail.utoronto.ca
# License: MIT
# Pre-requisites: Already downloaded the raw data
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
# First Step: not show the column types
raw_speed_data <-
  read_csv(
    file = "data/raw_data/raw_data.csv",
    show_col_types = FALSE
  )

# Second Step: Cleaned names in the data set
cleaned_speed_data <-
  clean_names(raw_speed_data)

# Third Step: Only choose the columns I need to use
cleaned_speed_data <-
  cleaned_speed_data |>
  select(
    location_id,
    installation_date,
    pct_50
  )

# Fourth Step: Make names easier to understand
cleaned_speed_data <-
  cleaned_speed_data |>
  rename(
    mean_speed = pct_50
  )

# Now, since each average speed corresponds to a valid location id,
# I will only need to leave the column of averages speeds for later graphs
# and tables
# Fifth Step: Further leave the data columns I need. 
# Data cleaning is now done
cleaned_speed_data <-
  cleaned_speed_data |>
  select(
    mean_speed
  )

#### Save data ####
write_csv(cleaned_speed_data, "data/analysis_data/analysis_data.csv")

