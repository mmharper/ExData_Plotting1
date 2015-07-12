## Code for Plot 4 of Project 1
## July 2015

## This code assumes that the data file household_power_consumption.txt
## is in your working directory.

#### R Code Starts Here - and it only took me an hour for these four lines!!!
setwd("/Users/mmcgee/Dropbox/Coursera Certificate/4 Exploratory Data Analysis")
names <- c("Date","Time","GlobalActive","GlobalReactive", "Voltage","Intensity","Meter1","Meter2","Meter3")
wholeData <- read.table(file="household_power_consumption.txt",sep=";",na.strings="?",skip=1,col.names=names,stringsAsFactors=FALSE)
usageData <- subset(wholeData,Date == "1/2/2007" | Date == "2/2/2007")

attach(usageData)

## Create Plot 4
png(file="plot4.png")
par(mfrow=c(2,2))
plot(DateTime,GlobalActive,type="l",xlab="", ylab="Global Active Power")
plot(DateTime,Voltage,type="l",xlab="datetime")
plot(DateTime,Meter1,type="l",xlab="",ylab="Energy sub metering")
lines(DateTime,Meter2,type="l",col="red")
lines(DateTime,Meter3,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
plot(DateTime,GlobalReactive,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()

