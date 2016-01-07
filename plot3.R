dataFile <- "/Users/samiryelne/Desktop/ExData_Plotting1/household_power_consumption.txt"
data <- read.table(dataFile,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
final_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

dt <- strptime(paste(final_data$Date,final_data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
sm1 <- as.numeric(final_data$Sub_metering_1)
sm2 <- as.numeric(final_data$Sub_metering_2)
sm3 <- as.numeric(final_data$Sub_metering_3)

png("plot3.png",width=480,height=480)
plot(dt,sm1,type="l",xlab="",ylab="Energy sub metering")
lines(dt,sm2,xlab="",col="red")
lines(dt,sm3,xlab="",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
