# Exercise 05 SNA/BDA Berg


library(dplyr)
library(tidyverse)
library(ggplot2)
library(ggrepel)
library(forcats)
library(e1071)
library(corrr)
library(goeveg)
library(DescTools)
library(moderndive)
library(lm.beta)
library(skimr)
library(gmodels)
library(lawstat)
library(purrr)
library(tibble)
library(readxl)

IMDB_Movie_Data <- read_csv("Data/Raw/IMDB-Movie-Data.csv")
View(IMDB_Movie_Data)

imdb_movie_data <- IMDB_Movie_Data %>% 
  select(Title, Director, Year, `Runtime (Minutes)`, Rating, Votes, `Revenue (Millions)`) %>% 
  rename(title = Title, director = Director, year = Year, runtime = `Runtime (Minutes)`, rating = Rating, votes = Votes, revenue_million = `Revenue (Millions)`) %>% 
  glimpse()


#1 

#2

imdb_movie_data %>% 
  group_by(runtime) %>% 
  summarise(max_runtime_director = max(director)) %>% 
  arrange(desc(runtime))

#3

imdb_movie_data %>% 
  group_by(rating) %>% 
  summarise(max_rating_title = max(title)) %>% 
  arrange(desc(rating))

#4 

imdb_movie_data %>% 
  group_by(rating) %>% 
  summarise(max_rating_title = max(title)) %>% 
  arrange(desc(rating))




