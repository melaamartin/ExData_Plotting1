
#plot 4 
##uses datasets and pre-processed variables in plot1.R

png("plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2), mar=c(4.1,4.6,3.1,2.1)) #change margins

plot(pwr.sml$datetime, pwr.sml$Global_active_power, type="l",
     ylab="Global Active Power", xlab="")

plot(pwr.sml$datetime, pwr.sml$Voltage, type="l",
     ylab="Voltage", xlab="datetime")

plot(pwr.sml$datetime, pwr.sml$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(pwr.sml$datetime, pwr.sml$Sub_metering_2, col="red")
lines(pwr.sml$datetime, pwr.sml$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1),
       col=c("black","red","blue"),bty="n", cex=0.75)

plot(pwr.sml$datetime, pwr.sml$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
