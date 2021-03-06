data<-read.table("hpc.txt",sep=";",header=TRUE,colClasses="character")
d<-data[as.Date(data$Date,format("%d/%m/%Y")) == as.Date("2007-2-1") | as.Date(data$Date,format("%d/%m/%Y")) == as.Date("2007-2-2"),]
dt<-strptime(paste(d$Date,d$Time),"%d/%m/%Y %H:%M:%S")
png(filename="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(dt,d$Global_active_power,type="n",xlab="",ylab="Global Active Power")
lines(dt,d$Global_active_power)
plot(dt,d$Voltage,type="n",xlab="datetime",ylab="Voltage")
lines(dt,d$Voltage)
plot(dt,d$Sub_metering_1,type="n",xlab="",ylab="Eneryg Sub metering")
lines(dt,d$Sub_metering_1)
lines(dt,d$Sub_metering_2,col="red")
lines(dt,d$Sub_metering_3,col="Blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",cex=0.9)
plot(dt,d$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
lines(dt,d$Global_reactive_power)
dev.off()