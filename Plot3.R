newdata <- read.csv("household_power_consumption.csv")
##Just like plot 2, we perform conversions for date and time.
newdata$Datetime <- strptime(paste(newdata$Date, newdata$Time), "%d/%m/%Y %H:%M:%S")
##For the plot we use a line graph for the first sub metering and a set of points for the second and third ones.
plot(newdata$Datetime, newdata$Sub_metering_1, type = "l", xlab = "day", ylab = "Energy sub metering")
points(newdata$Datetime, newdata$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(newdata$Datetime, newdata$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
