
#read data
data <- read.table("household_power_consumption.txt", header = TRUE,as.is=TRUE,sep=";")

#subset 2007 readings
dat <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

#make plot
png("plot4.png",width = 480, height = 480,bg="transparent")
par(mfrow = c(2,2))
plot(dat$Global_active_power, typ='l', ylab="Global Active Power (kilowatts)", xlab="", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))

plot(dat$Voltage, typ='l', ylab="Voltage", xlab="datetime", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))

with(dat,plot(dat$Sub_metering_1,typ='l',ylab="Energy sub metering",xlab="",xaxt='n'))
with(dat,points(Sub_metering_2,col="red",typ='l'))
with(dat,points(Sub_metering_3,col="blue",typ='l'))
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))
legend("topright",pch=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(dat$Global_reactive_power, lwd=2, ylab="Global_reactive_power", xlab="datetime", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))

dev.off()