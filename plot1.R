# Simple hist plot

source("read_data.R")
use_data <- read_data()
png(filename = "plot1.png",
    width = 480, height = 480)
hist(use_data[,Global_active_power],
     col=c('red'),
     main='Global Active Power',
     xlab='Global Active Power (kilowatts)',
     ylab='Frequency'
     )
