my_data <- 
    read.table(
    file = "D:/jmendoza/Desktop/household_power_consumption.txt", 
    header = T, 
    sep = ";", 
    na.strings = "?", 
    stringsAsFactors = F
    )[68077:69517, ]

plot(
    x = strptime(my_data$Time, format = "%H:%M:%S"), 
    y = my_data$Global_active_power,
    xlab = as.Date(my_data$Date, format = "%d/%m/%Y"),
    ylab = "Global Active Power (kilowatts)"
)
