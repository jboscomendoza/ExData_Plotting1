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

plot(
    x = my_data$Day,
    y = my_data$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "n"
)
lines(    x = my_data$Day,
          y = my_data$Global_active_power)
