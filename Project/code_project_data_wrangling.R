library(tidyverse)
install.packages("janitor")
library(janitor)

data_covid_08_04_20 <- read_csv("https://raw.githubusercontent.com/datasets/covid-19/master/data/time-series-19-covid-combined.csv") %>% 
  clean_names('snake') %>% 
  rename(country = country_region) %>% 
  filter(date == "2020-08-04") %>% 
  select(-province_state, -lat, -long) 




