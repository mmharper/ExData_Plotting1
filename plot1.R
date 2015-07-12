## Code for Plot 1 of Project 1
## July 2015

## Code assumes that the data household power consumption file 
## is in your working directory.

#### R Code Starts Here - and it only took me an hour for these four lines!!!
names <- c("Date","Time","GlobalActive","GlobalReactive", "Voltage","Intensity","Meter1","Meter2","Meter3")
wholeData <- read.table(file="household_power_consumption.txt",sep=";",na.strings="?",skip=1,col.names=names,stringsAsFactors=FALSE)
usageData <- subset(wholeData,Date == "1/2/2007" | Date == "2/2/2007")

attach(usageData)

## Create Plot 1
png(filename="plot1.png")
hist(GlobalActive,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

