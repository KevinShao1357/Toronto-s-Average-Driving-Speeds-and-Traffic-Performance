#### Preamble ####
# Purpose: Tests whether all elements of the data are reasonable and prepared
# for later data presentation and summary statistics
# Author: Kevin Shao
# Date: 27 September 2024
# Contact: kevin.shao@mail.utoronto.a
# License: MIT
# Pre-requisites: Have the cleaned data and simulated data prepared
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

# We will test both the simulated and cleaned data for largest accuracy and
# precision
#### Test simulated data ####
# Test if data has any negative numbers (Zero is okay given that the car may be 
# at rest)
simulated_speed_data$speed |> min() < 0

# Test if there are any NAs
all(is.na(simulated_speed_data$speed))

# Test if all data values are numeric
all(is.numeric(simulated_speed_data$speed))

### Test cleaned data ###
# Read file that contains cleaned data
cleaned_data <- read_csv("data/analysis_data/analysis_data.csv")

# Test if data has any negative numbers (zero is okay 
# given that the car may be at rest)
cleaned_data$mean_speed |> min() < 0

# Test if there are any NAs
all(is.na(cleaned_data$mean_speed))

# Test if all data values are numeric
all(is.numeric(cleaned_data$mean_speed))
