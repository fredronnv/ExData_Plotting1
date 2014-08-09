# Multiple plots in one, 2x2

source("read_data.R")
use_data <- read_data()
png(filename = "plot4.png",
    width = 480, height = 480)
par(mfrow=c(2,2))
plot(use_data$TS, use_data$Global_active_power,
 type = 'l',
 xlab = '',
 main = '',
 ylab = 'Global Active Power'
)
plot(use_data$TS, use_data$Voltage,
 type = 'l',
 xlab = 'datetime',
 main = '',
 ylab = 'Voltage'
)
plot(use_data$TS, use_data$Sub_metering_1,
 col  = 'black',
 type = 'l',
 xlab = '',
 main = '',
 ylab = 'Energy sub metering'
)
lines(use_data$TS, use_data$Sub_metering_2,
 col  = 'orange',
)
lines(use_data$TS, use_data$Sub_metering_3,
 col  = 'blue',
)

legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1), col=c('black', 'orange', 'blue'), bty='n')

plot(use_data$TS, use_data$Global_reactive_power,
 type = 'l',
 xlab = 'datetime',
 main = '',
 ylab = 'Global reactive power'
)


