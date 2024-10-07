library(tidyverse)
library(here)

tv_hourse_tabulation <- gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write_csv(tv_hourse_tabulation, here("TV_Hours_by_Marital.csv"))

