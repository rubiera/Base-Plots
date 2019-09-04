##general use
setwd("~/Tony Work/EID Data Science/work/")
getwd()

#setwd("H:/2022 Census/EID Data Science/work")
#getwd()

library(data.table)

#We will only be using data from the dates 2007-02-01 and 2007-02-02
hld_power <- fread('./data/household_power_consumption.txt')
hld_power_slim <- hld_power[Date == "1/2/2007" | Date == "2/2/2007"]

#Attribute Information:

#1.date: Date in format dd/mm/yyyy 
#2.time: time in format hh:mm:ss 
#3.global_active_power: household global minute-averaged active power 
#(in kilowatt) 
#4.global_reactive_power: household global minute-averaged reactive power 
#(in kilowatt) 
#5.voltage: minute-averaged voltage (in volt) 
#6.global_intensity: household global minute-averaged current intensity 
#(in ampere) 
#7.sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
#It corresponds to the kitchen, containing mainly a dishwasher, an oven 
#and a microwave (hot plates are not electric but gas powered). 
#8.sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
#It corresponds to the laundry room, containing a washing-machine, 
#a tumble-drier, a refrigerator and a light. 
#9.sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). 
#It corresponds to an electric water-heater and an air-conditioner.

hld_power_slim$Global_active_power <- as.numeric(hld_power_slim$Global_active_power)
hld_power_slim$Global_reactive_power <- as.numeric(hld_power_slim$Global_reactive_power)
hld_power_slim$Voltage <- as.numeric(hld_power_slim$Voltage)
hld_power_slim$Global_intensity <- as.numeric(hld_power_slim$Global_intensity)
hld_power_slim$Sub_metering_1 <- as.numeric(hld_power_slim$Sub_metering_1)
hld_power_slim$Sub_metering_2 <- as.numeric(hld_power_slim$Sub_metering_2)

################################

hld_power_slim$Date <- as.Date(hld_power_slim$Date, "%d/%m/%Y")
DateTime <- paste(hld_power_slim$Date, hld_power_slim$Time)

#  plot#1
hist(hld_power_slim$Global_active_power, col="red",
     main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, "./Plot1.png", height=480, width=480, units = "px", res=120)
dev.off()
dev.set(1)



