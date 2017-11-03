
##Preprocessing for plot 1 and all successive plots

setwd("your working directory")##set working directory 

##this will automatically source, download and unzip file into wd
dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(dataset_url, "power_data.zip")
unzip("power_data.zip", exdir = "power_data")

##read in entire dataset with fread and then subset using grepl
library(data.table)
pwr <- fread("power_data/household_power_consumption.txt", na.strings="?",stringsAsFactors = FALSE)##fread for large dataset
pwr.sml <- subset(pwr,grepl("^[1,2]/2/2007",pwr$Date))

pwr.sml$Date <-as.Date(pwr.sml$Date,format="%d/%m/%Y")
pwr.sml$datetime <- as.POSIXct(paste(pwr.sml$Date, pwr.sml$Time), "%d/%m/%Y %H:%M:%S")

##plot 1 frequency global active power 
png("plot1.png", width=480, height=480, units="px")
hist(pwr.sml$Global_active_power, xlab="Global Active Power (kilowatts)",
     ylab="Frequency", main="Global Active Power",col="red")
dev.off()