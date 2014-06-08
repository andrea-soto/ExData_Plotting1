plot1 <- function() {
     
#Exploratory Data Analysis - Course Project 1
#Function to create Plot 1 
     
     #Read Data
     data <- read.table("household_power_consumption.txt", header=TRUE, na.string="?", nrows= 70000, sep=";")
     
     #Subset data
     auxLevel <- factor("1/2/2007","2/2/2007")
     data <- subset( data,  Date == levels(auxLevel)[1] | Date == levels(auxLevel)[2])

    
     
     #Graph
     png( file = "plot1.png")
     hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
     dev.off()
}