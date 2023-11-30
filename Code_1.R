data$begin = as.POSIXct(data$started_at, format = "%m/%d/%Y %H:%M") 
data$end = as.POSIXct(data$ended_at, format = "%m/%d/%Y %H:%M") 
data$duration =  data$end-data$begin
data$weekday = weekdays(data$begin)
data$hours = hours(data$begin)
bike_hours = data %>% group_by(weekday) %>% summarize (hours = sum(duration)) 
data$hours = as.POSIXct(data$started_at, format = "%m/%d/%Y %H:%M") 

library(ggplot2)
ggplot(bike_usage, aes(x = weekday, y = usage)) +
  geom_bar(stat = "identity") 
+
  labs(title = "Peak Hours by Day of the Week",
       x = "Day of the Week",
       y = "Peak Hour") +
  theme_minimal()
bike_usage$weekday = sort(bike_usage$weekday)
bike_usage = bike_usage [order(bike_usage$weekday),]

library(ggplot2)
chloe_data <- chloe_data %>%
  mutate(hours = seconds(usage) / 3600)
