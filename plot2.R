## Code for Plot 2 of Project 1
## July 2015

## This code assumes that the data file household_power_consumption.txt
## is in your working directory.

#### R Code Starts Here - and it only took me an hour for these four lines!!!
names <- c("Date","Time","GlobalActive","GlobalReactive", "Voltage","Intensity","Meter1","Meter2","Meter3")
wholeData <- read.table(file="household_power_consumption.txt",sep=";",na.strings="?",skip=1,col.names=names,stringsAsFactors=FALSE)
usageData <- subset(wholeData,Date == "1/2/2007" | Date == "2/2/2007")

attach(usageData)

## Create Plot 2
# Create "DateTime" column
DateTime <- strptime(paste(usageData$Date, usageData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
DateTime <- as.POSIXct(DateTime) # convert to POSIXct class
library(dplyr)
usageData <- mutate(usageData,DateTime=DateTime)
png(file="plot2.png")
plot(DateTime,GlobalActive,type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

