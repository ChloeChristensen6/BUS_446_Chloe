data$begin = as.POSIXct(data$started_at, format = "%m/%d/%Y %H:%M") 
data$end = as.POSIXct(data$ended_at, format = "%m/%d/%Y %H:%M") 
data$duration =  data$end-data$begin
data$weekday = weekdays(data$begin)
data$hours = hours(data$begin)
bike_hours = data %>% group_by(weekday) %>% summarize (hours = sum(duration)) 
data$hours = as.POSIXct(data$started_at, format = "%m/%d/%Y %H:%M") 
