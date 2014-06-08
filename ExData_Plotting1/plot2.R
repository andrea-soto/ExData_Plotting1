plot2 <- function() {
     
#Exploratory Data Analysis - Course Project 1
#Function to create Plot 1 
     
     #Read Data
     data <- read.table("household_power_consumption.txt", header=TRUE, na.string="?", nrows= 70000, sep=";")
     
     #Subset data
     auxLevel <- factor("1/2/2007","2/2/2007")
     data <- subset( data,  Date == levels(auxLevel)[1] | Date == levels(auxLevel)[2])
     
     #Date to POSIXlt
     dateTime <- paste(data$Date, data$Time)
     dateTime <- strptime(data$Date, "%d/%m/%Y %H:%M:%S")
 
     
     #Graph
     png( file = "plot2.png")
     plot(auxDate, temp$Global_active_power, type="l", xlab ="", ylab = "Global Active Power (kilowatts)")
     dev.off()
}