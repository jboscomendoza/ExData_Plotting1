my_data <- 
    read.table(
    file = "D:/jmendoza/Desktop/household_power_consumption.txt", 
    header = T, 
    sep = ";", 
    na.strings = "?"
    )[68077:69517, ]

hist(
    x = my_data$Global_active_power, 
    col = "red", 
    breaks = 15, 
    main = "Global Active Power", 
    xlab = "Global Active Power (kilowatts)"
)
