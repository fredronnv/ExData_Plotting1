library("data.table")

read_data <- function(){
# Download the zip if its not in the cwd
  url = "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  if (!file.exists("household_power_consumption.zip")){
    download.file(url,"household_power_consumption.zip")
  }

# Unzip the file if its not in the cwd
  if (!file.exists("household_power_consumption.txt")){
    unzip("household_power_consumption.zip")
  }

# Read in the data and all the relevant columns
  data <- fread("household_power_consumption.txt", na.strings="?", sep=';', select=c('Date', 'Time', 'Global_active_power', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3', 'Voltage', 'Global_reactive_power'), showProgress = TRUE)
 
# Subset the data around interesting dates
  interesting_dates <- c('1/2/2007', '2/2/2007')
  use_data <- subset(data, Date %in% interesting_dates)

# Transform data into numerics and dates
  use_data <- transform(use_data,Global_active_power = as.numeric(Global_active_power),  Sub_metering_1 = as.numeric(Sub_metering_1), Sub_metering_2 = as.numeric(Sub_metering_2), Sub_metering_3 = as.numeric(Sub_metering_3), Voltage = as.numeric(Voltage), Global_reactive_power = as.numeric(Global_reactive_power), TS = as.POSIXct(strptime(paste(Date, Time, sep=" "), format='%d/%m/%Y %H:%M:%S')))
  return(use_data)
}
