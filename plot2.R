## Get file name
dataFile <- "C:/Users/Appu/Desktop/Coursera/household_power_consumption.txt"

## Load table
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##Subset the date for the required date ranges
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


##Perform date formating
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)


plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()