> File<-"./household_power_consumption.txt"
> setwd("/Users/shushanikgasparyan/Desktop/Coursera")

> data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

> wantedData<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

> datetime <- strptime(paste(wantedData$Date, wantedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> globalActivePower <- as.numeric(wantedData$Global_active_power)
> png("plot2.png", width=480, height=480)
> plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
> dev.off()