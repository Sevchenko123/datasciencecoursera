dataFile <- "/Users/samiryelne/Desktop/ExData_Plotting1/household_power_consumption.txt"
data <- read.table(dataFile,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
final_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

dt <- strptime(paste(final_data$Date,final_data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
gap <- as.numeric(final_data$Global_active_power)
png("plot2.png",width=480,height=480)
plot(dt,gap,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
