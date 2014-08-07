data<-read.table("hpc.txt",sep=";",header=TRUE,colClasses="character")
d<-data[as.Date(data$Date,format("%d/%m/%Y")) == as.Date("2007-2-1") | as.Date(data$Date,format("%d/%m/%Y")) == as.Date("2007-2-2"),]
dt<-strptime(paste(d$Date,d$Time),"%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480,height=480)
plot(dt,d$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(dt,d$Global_active_power)
dev.off()