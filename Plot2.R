newdata <- read.csv("household_power_consumption.csv")
##We Convert the Date and Time values
newdata$Datetime <- strptime(paste(newdata$Date, newdata$Time), "%d/%m/%Y %H:%M:%S")
##Our plot will be a line graph
plot(newdata$Datetime, newdata$Global_Active_Power, type = "l", xlab = "day", ylab = "Global Active Power(kilowatts)")
