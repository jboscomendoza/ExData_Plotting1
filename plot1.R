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

png(filename = "plot1.png", 480, 480)
hist(
    x = my_data$Global_active_power,
    col = "red",
    breaks = 15,
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)"
)
dev.off()
