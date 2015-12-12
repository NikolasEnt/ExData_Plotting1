  inf <- read.table("household_power_consumption.txt", header=TRUE, sep=';', na.strings='?')
  inf$Date <- as.Date(inf$Date, format='%d/%m/%Y')
  sub_inf<-inf[inf$Date=="2007-02-01"|inf$Date=="2007-02-02",3]
  sub_inf
  hist(sub_inf, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot1.png")
  dev.off()
