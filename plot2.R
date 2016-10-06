# Download and import data
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

# Generate plot
plot(
    x = strptime(paste(my_data$Date, my_data$Time), format = "%d/%m/%Y %H:%M:%S"),
    y = my_data$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "n"
)
lines(
    x = strptime(paste(my_data$Date, my_data$Time), "%d/%m/%Y %H:%M:%S"),
    y = my_data$Global_active_power
)
dev.off()

# Export to png
png(filename = "plot2.png", 480, 480)
plot(
    x = strptime(paste(my_data$Date, my_data$Time), format = "%d/%m/%Y %H:%M:%S"),
    y = my_data$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "n"
)
lines(
    x = strptime(paste(my_data$Date, my_data$Time), "%d/%m/%Y %H:%M:%S"),
    y = my_data$Global_active_power
)
dev.off()
