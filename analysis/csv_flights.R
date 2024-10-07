library(here)
library(tidyverse)
library(readr)
library(scales)

flights_data_readr <-  read_csv(here("data","flights.csv"))

flights_data_readr |> 
  ggplot(
    aes(
      x = dep_delay,
    )
  )+
  geom_histogram()+
  theme_minimal()

flights_data_readr |> 
  ggplot(
    aes(
      x = dep_delay,
    )
  )+
  geom_histogram(
    bins = 20,
    fill = "steelblue",
    color = "white"
  )+
  labs(
    title = "departure delay for origin airports",
    x = "delay in min",
    y = "count"
  )+
  facet_wrap(
    ~origin
    )+
  scale_y_log10(
    labels = label_log()
    )+
  theme_minimal(base_size = 15)
