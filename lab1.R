
library(ggplot2)
library(tidyverse)

people <- read_csv("people.csv") 

ggplot(people, aes(x = as.factor(class), fill = as.factor(survived))) +
  geom_bar(position = position_dodge()) +  
  geom_text(
    stat = "count",
    aes(label = after_stat(count)), 
    position = position_dodge(width = 0.9),  
    vjust = -0.5  
  ) +
  labs(
    title = "Survivors and Non-Survivors by Class",
    x = "Class",
    y = "Count",
    fill = "Survived"
  ) +
  scale_fill_manual(values = c("tomato","steelblue"), labels = c("False", "True")) +
  theme_minimal()
