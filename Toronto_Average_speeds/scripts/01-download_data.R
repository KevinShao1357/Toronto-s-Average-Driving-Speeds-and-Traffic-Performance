#### Preamble ####
# Purpose: Downloads and saves the data from chosen OpenDataToronto Dataset
# Author: Kevin Shao
# Date: 27 September 2024
# Contact: kevin.shao@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(readr)

#### Download data ####
# get package
package <- show_package("058236d2-d26e-4622-9665-941b9e7a5229")

# get all resources for this package
resources <- list_package_resources("058236d2-d26e-4622-9665-941b9e7a5229")

# identify datastore resources (by default, open data toronto sets 
# data to .csv format)
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first row of dataset as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv") 
         
