inf <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings='?')
inf$Date <- as.Date(inf$Date, format='%d/%m/%Y')
sub_inf<-inf[inf$Date=="2007-02-01"|inf$Date=="2007-02-02",]
sub_inf <- transform(sub_inf, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
plot(sub_inf$timestamp, sub_inf$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()