dataFile <- "/Users/samiryelne/Desktop/ExData_Plotting1/household_power_consumption.txt"
data <- read.table(dataFile,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
final_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

dt <- strptime(paste(final_data$Date,final_data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

gap <- as.numeric(final_data$Global_active_power)
plot(dt,gap,type="l",xlab="",ylab="Global Active Power (kilowatts)")

v <- as.numeric(final_data$Voltage)
plot(dt,v,type="l",xlab="datetime",ylab="Voltage")

sm1 <- as.numeric(final_data$Sub_metering_1)
sm2 <- as.numeric(final_data$Sub_metering_2)
sm3 <- as.numeric(final_data$Sub_metering_3)

plot(dt,sm1,type="l",xlab="",ylab="Energy sub metering")
lines(dt,sm2,xlab="",col="red")
lines(dt,sm3,xlab="",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")

grp <- as.numeric(final_data$Global_reactive_power)
plot(dt,grp,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()
