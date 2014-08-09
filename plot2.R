# Simple xy plot (use lines)

source("read_data.R")
use_data <- read_data()
png(filename = "plot2.png",
    width = 480, height = 480)
plot(use_data$TS, use_data$Global_active_power,
 type = 'l',
 xlab = '',
 main = '',
 ylab = 'Global Active Power (kilowatts)'
)


