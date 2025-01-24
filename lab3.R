# Run this to load all necessary libraries
library(tidyverse)
# install.packages("palmerpenguins") # Run this if you can't load the palmerpenguins library 
library(palmerpenguins)
pgs <- penguins %>% drop_na
head(pgs)

#Recreating the plot from Lab 02
pgs %>% 
  ggplot() +
  geom_point(aes(x = bill_length_mm, y = bill_depth_mm, color = species),
             size = 1, alpha = 0.9) +
  labs(x = "Bill Length",
       y = "Bill Depth",
       color = "Species")
