data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

data_s <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

str(data_s)

data_s$Date <- as.Date(data1$Date, format="%d/%m/%Y")

str(data_s$Date)

hist(data_s$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")