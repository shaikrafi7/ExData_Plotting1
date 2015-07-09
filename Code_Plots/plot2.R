#read data
data <- read.table("household_power_consumption.txt", header = TRUE,as.is=TRUE,sep=";")

#subset 2007 readings
dat <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

#make plot
png("plot2.png",width = 480, height = 480,bg="transparent")

plot(dat$Global_active_power, typ='l', ylab="Global Active Power (kilowatts)", xlab="", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))

dev.off()