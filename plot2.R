getwd()
setwd("C:/Users/romerj01/OneDrive - FrieslandCampina/Documents/GitHub/ExData_Plotting1")

--------------------------------------------------------------------------------------------------------
        
data_full <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

data_s <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

data_s$Date <- as.Date(data_s$Date, format="%d/%m/%Y")


datetime <- paste(as.Date(data_s$Date), data_s$Time)

data_s$datetime <- as.POSIXct(datetime)


## Plot 2

with(data_s, {
        plot(Global_active_power~datetime, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
})


dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()
