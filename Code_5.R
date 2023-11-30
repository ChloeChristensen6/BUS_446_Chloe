ggplot(chloe_data, aes(x = weekday, y = hours)) +
  geom_bar(colour="blue", fill="#DD8888", width=.8, stat="identity") +
   guides(fill=FALSE) +
  xlab("Weekday") + ylab("Hours") +
  ggtitle("Peak Hours by Day of the Week") +
   theme(plot.title = element_text(hjust = .5))
