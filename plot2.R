
#plot 2 power by day/hour
#uses datasets and pre-processed variables from plot1.R

png("plot2.png", width=480, height=480, units="px")
plot(pwr.sml$datetime, pwr.sml$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")##produces warnings about timezone but ok
dev.off()