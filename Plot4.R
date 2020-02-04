newdata <- read.csv("household_power_consumption.csv")
## As with the previous two plots, we convert date and time
newdata$Datetime <- strptime(paste(newdata$Date, newdata$Time), "%d/%m/%Y %H:%M:%S")
## We partion our plotting system into a 2x2.
par(mfrow = c(2, 2))
##The first of the four plots is in fact, Plot2
plot(newdata$Datetime, newdata$Global_Active_Power, type = "l", xlab = "day", ylab = "Global Active Power(kilowatts)")
##The second plot is datetime vs. voltage
plot(newdata$Datetime, newdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
##The third plot is in fact, Plot3
plot(newdata$Datetime, newdata$Sub_metering_1, type = "l", xlab = "day", ylab = "Energy sub metering", col = "black")
points(newdata$Datetime, newdata$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", col = "red")
points(newdata$Datetime, newdata$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )
##The fourth plot is datetime vs. global reactive power
plot(newdata$Datetime, newdata$Global_Reactive_Power, type = "l", xlab = "datetime", ylab = "Global_reactive-power", ylim = c(0, 0.5))
