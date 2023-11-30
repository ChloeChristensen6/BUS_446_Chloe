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
