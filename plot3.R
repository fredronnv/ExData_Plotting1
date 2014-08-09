# Multiple line plot with legend

source("read_data.R")
use_data <- read_data()

png(filename = "plot3.png",
    width = 480, height = 480)

plot(use_data$TS, use_data$Sub_metering_1,
 col  = 'black',
 type = 'l',
 xlab = '',
 main = '',
 ylab = 'Energy sub metering'
)
lines(use_data$TS, use_data$Sub_metering_2,
 col  = 'red',
)
lines(use_data$TS, use_data$Sub_metering_3,
 col  = 'blue',
)

legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1), col=c('black', 'red', 'blue'))



