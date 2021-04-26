library(dplyr)
a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
a <-tbl_df(a)
b<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")

c<-b$Global_active_power
d<-as.numeric(as.character(c))

png("plot1.png",width=480,height=480)
hist(d,main="Global Active Power",xlab="Global Active Power (kilowatt)", ylab="Frequency",col="red")

dev.off()