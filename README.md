# Basic Plotting in R using hist and plot
Submitted for: Coursera, Exploratory Data Analysis, Week 1, Course Project 1.

Source Data:
Electric power consumption from the University of California Irvine Machine Learning Repository  (http://archive.ics.uci.edu/ml/index.php)
The data set is found at (http://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption)
•	Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
1.	Date: Date in format dd/mm/yyyy
2.	Time: time in format hh:mm:ss
3.	Global_active_power: household global minute-averaged active power (in kilowatt)
4.	Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5.	Voltage: minute-averaged voltage (in volt)
6.	Global_intensity: household global minute-averaged current intensity (in ampere)
7.	Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8.	Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9.	Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

The data comes in in character format and must be converted to date, time, and numeric. The date and time, after getting teh correct type, are combined into a single field (details in the respective script for each plot).

There are four plots in this submission, with their corresponding 480 pixel by 480 pixel png image file:

Plot 1 is a histogram of Global_active_power. In the script:
hist(hld_power_slim$Global_active_power, col="red",
     main="Global Active Power", xlab="Global Active Power (kilowatts)")
Plot 2 is a line plot of Global Active Power (kilowatts) over the continuous two day period encompassing February 1 and February 2, 2007. In the script:
plot(DateTimePlot,hld_power_slim$Global_active_power, xlab="",
     type="l", ylab="Global Active Power (kilowatts)")
Plot 3 is a line plot of three distributions of Sub metering. In the script:
plot(DateTimePlot,hld_power_slim$Sub_metering_1, col="black", xlab="",
     type="l", ylab="Energy sub metering")
lines(DateTimePlot,hld_power_slim$Sub_metering_2, col="red", type="l")
lines(DateTimePlot,hld_power_slim$Sub_metering_3, col="blue", type="l")
Finally, Plot 4 is a two by two plot combining plots 2 and 3, as described previously, and two additional plots; one for Voltage over time, and another for global reactive power over time. In the script:
par(mfrow = c(2,2), mar = c(5,5,2,2))
plot 2, as above, in the (1,1) position.
A new plot in the (1,2) position.
plot(DateTimePlot,hld_power_slim$Voltage, xlab="datetime",
     type="l", ylab="Voltage")
plot 3, as above, in the (2,1) position.
A new plot in the (2,2) position
plot(DateTimePlot,hld_power_slim$Global_reactive_power, xlab="datetime",
     type="l", ylab="Global_reactive_power")


