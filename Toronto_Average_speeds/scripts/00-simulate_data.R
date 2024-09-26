#### Preamble ####
# Purpose: Simulates the data of car speeds on roads which have
# speed display signs equipped
# Author: Kevin Shao
# Date: 27 September 2024
# Contact: kevin.shao@mail.utoronto.ca
# License: MIT
# Pre-requisites: Prepared a suitable dataset on OpenDataToronto for analysis
# and have basic understanding of dataset sufficient for setting up a simulation
# Any other information needed? None

#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("opendatatoronto")
# install.packages("janitor")

library(opendatatoronto)
library(tidyverse)

#### Simulate data ####
# Set seed to ensure reproducibility
set.seed(143)

# Set a reasonable number of generated speeds, here I will set to 500
speed_kph <- 500

# Simulate the speeds and save them into simulated_speed_data
# Random numbers will be created with the minimum of 0 and maximum of 80
# as a range of reasonable car speeds

simulated_speed_data <-
  tibble(
      "speed" = sample(0:80,
                              speed_kph,
                              replace = TRUE
      ),
  )

