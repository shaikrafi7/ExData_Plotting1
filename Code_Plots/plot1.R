#read data
data <- read.table("household_power_consumption.txt", header = TRUE,as.is=TRUE,sep=";")

#subset 2007 readings
dat <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

#make plot
png("plot1.png",width = 480, height = 480,bg="transparent")
histo<-hist(as.numeric(dat$Global_active_power),col="red",main="Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()