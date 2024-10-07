library(here)
library(tidyverse)
library(readr)

flights_data_readr <-  read_csv(here("data","flights.csv"))

flights_data_readr |> 
  ggplot(
    aes(
      x = dep_delay,
    )
  )+
  geom_histogram()+
  theme_minimal()
