# download.file(
#     "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
#     "exdata%2Fdata%2Fhousehold_power_consumption.zip"
# )
#
# unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")

my_data <-
    read.table(
        file = "household_power_consumption.txt",
        header = T,
        sep = ";",
        na.strings = "?",
        stringsAsFactors = F
    )[66637:69516, ]

my_data$Day <- strptime(
    paste(my_data$Date, my_data$Time),
    format = "%d/%m/%Y %H:%M:%S"
)

png(filename = "plot4.png", height = 900, width = 900)
par(mfrow = c(2, 2))
plot(
    x = my_data$Day,
    y = my_data$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "n"
)
lines(
    x = my_data$Day,
    y = my_data$Global_active_power
    )
plot(
    x = my_data$Day,
    y = my_data$Voltage,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "n"
)
lines(
    x = my_data$Day,
    y = my_data$Voltage
)
plot(
    x = my_data$Day,
    y = my_data$Sub_metering_1,
    type = "n",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
)
lines(my_data$Day, my_data$Sub_metering_1, col = "black")
lines(my_data$Day, my_data$Sub_metering_2, col = "red")
lines(my_data$Day, my_data$Sub_metering_3, col = "blue")
plot(
    x = my_data$Day,
    y = my_data$Global_reactive_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "n"
)
lines(    x = my_data$Day,
          y = my_data$Global_reactive_power)
dev.off()
