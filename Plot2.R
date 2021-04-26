a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
a<-tbl_df(a)
b<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")

c<-b$Global_active_power
d<-as.numeric(as.character(c))
png("plot2.png", width=480, height=480)

datetime <- strptime(paste(b$Date, b$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, d, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()