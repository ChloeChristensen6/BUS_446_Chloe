library(ggplot2)
chloe_data <- chloe_data %>%
  mutate(hours = seconds(usage) / 3600)
