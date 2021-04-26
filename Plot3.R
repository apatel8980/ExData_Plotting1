a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
a<-tbl_df(a)
b<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")
png("plot3.png", width=480, height=480)

datetime <- strptime(paste(b$Date, b$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, b$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering",col="black",ylim=c(0,40))
par(new=TRUE)
plot(datetime, b$Sub_metering_2, type="l", xlab="", ylab="",col="red",ylim=c(0,40))
par(new=TRUE)
plot(datetime, b$Sub_metering_3, type="l", xlab="", ylab="",col="blue",ylim=c(0,40))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

dev.off()
