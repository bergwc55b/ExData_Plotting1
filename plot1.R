data<-read.table("hpc.txt",sep=";",header=TRUE,colClasses="character")
d<-data[as.Date(data$Date,format("%d/%m/%Y")) == as.Date("2007-2-1") | as.Date(data$Date,format("%d/%m/%Y")) == as.Date("2007-2-2"),]
png(filename="plot1.png",width=480,height=480)
hist(as.numeric(d$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()