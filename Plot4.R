## Open PNG device
png(filename = "Plot4.png",width = 480,height=480)

## set device for 2 x 2 plots
par(mfrow = c(2,2))

## Make plots
## sub Plot 1
plot(x= HPC$Datetime,
     y = HPC$Global_active_power,
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power")

## sub Plot 2
plot(x = HPC$Datetime,
     y = HPC$Voltage, 
     xlab = "datetime", 
     ylab = "Voltage", type = "l")

## sub Plot 3
plot(x= HPC$Datetime,
     y = HPC$Sub_metering_1,
     type = "l", 
     xlab = "",
     col = "black",
     ylab = "Energy sub metering")

lines(x= HPC$Datetime,
      y = HPC$Sub_metering_2,
      type = "l", 
      col = "red")

lines(x= HPC$Datetime,
      y = HPC$Sub_metering_3,
      type = "l",
      col = "blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,col = c("black","red","blue"),bty = "n",
       pch = "__")

## sub Plot 4
plot(x= HPC$Datetime,
     y = HPC$Global_reactive_power,
     type = "l", 
     xlab = "datetime", 
     ylab = "Global_reactive_power")

## Close PNG device
dev.off()