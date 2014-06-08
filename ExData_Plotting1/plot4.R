plot4 <- function() {
     
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
     png( file = "plot4.png")
     
     par(mfrow = c(2, 2))
     plot(auxDate, temp$Global_active_power, type="l", xlab ="", ylab = "Global Active Power (kilowatts)")
     plot(auxDate, temp$Voltage, type="l", xlab ="datetime", ylab = "Voltage")
     plot(auxDate, temp$Sub_metering_1, type="l",xlab ="", ylab = "Energy Sub Metering")
     lines( auxDate, temp$Sub_metering_2, type="l", col="red")
     lines( auxDate, temp$Sub_metering_3, type="l", col="blue")
     legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty=c(1,1,1))
     
     plot(auxDate, temp$Global_reactive_power, type="l", xlab ="datetime", ylab = "Global Reactive Power (kilowatts)")
     
     
     dev.off()
}