> File<-"./household_power_consumption.txt"
> setwd("/Users/shushanikgasparyan/Desktop/Coursera")

> data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

> wantedData<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
> GlobalActivePower<-as.numeric(wantedData$Global_active_power)
> png("plot1.png", width=480, height=480)
> hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
> dev.off()