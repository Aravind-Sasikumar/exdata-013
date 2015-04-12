

## Get file name
dataFile <- "C:/Users/Appu/Desktop/Coursera/household_power_consumption.txt"

## Load table
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##Subset the date for the required date ranges
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


globalActivePower <- as.numeric(subSetData$Global_active_power)


##Plot1
hist(globalActivePower, 
     col="Red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

dev.copy(png, file="plot1.png", height=480, width=480)

dev.off()