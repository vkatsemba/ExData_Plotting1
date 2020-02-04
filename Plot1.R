##I imported the data from the notepad into Excel and kept the Data for dates 1/2/2007 and 2/2/2007 and deleted everything else.
##I saved the data for the two dates as "household_power_consumption.csv"
newdata <- read.csv("household_power_consumption.csv")
##The code for the first plot is:
hist(newdata$Global_Active_Power, main = "Global Active Power", xlab = "Global Active Power(kilowatts)", ylab = "Frequency", col = "red", breaks = 13, xlim = c(0,6), ylim = c(0,1200))
