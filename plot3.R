#plot 3 energy sub metering layered plot

png("plot3.png", width=480, height=480, units="px")
plot(pwr.sml$datetime, pwr.sml$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(pwr.sml$datetime, pwr.sml$Sub_metering_2, col="red")
lines(pwr.sml$datetime, pwr.sml$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1),
       col=c("black","red","blue"), cex=0.75)
dev.off()