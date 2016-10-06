download.file(
    "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
    "exdata%2Fdata%2Fhousehold_power_consumption.zip")

unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")

my_data <-
    read.table(
        file = "household_power_consumption.txt",
        header = T,
        sep = ";",
        na.strings = "?",
        stringsAsFactors = F
    )[66637:69516, ]

png(filename = "plot3.png", 480, 480)
plot(
    x = strptime(paste(my_data$Date, my_data$Time), "%d/%m/%Y %H:%M:%S"),
    y = my_data$Sub_metering_1,
    type = "n",
    xlab = "",
    ylab = "Energy sub metering"
)
lines(
    x = strptime(paste(my_data$Date, my_data$Time), "%d/%m/%Y %H:%M:%S"),
    y = my_data$Sub_metering_1,
    col = "black"
)
lines(
    x = strptime(paste(my_data$Date, my_data$Time), "%d/%m/%Y %H:%M:%S"),
    y = my_data$Sub_metering_2,
    col = "red"
)
lines(
    x = strptime(paste(my_data$Date, my_data$Time), "%d/%m/%Y %H:%M:%S"),
    y = my_data$Sub_metering_3,
    col = "blue"
)
legend(
    x = "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty = 1, col = c("black", "red", "blue")
)
dev.off()
