
## Open PNG device
png(filename = "Plot3.png",width = 480,height=480)

## make sure the device has single plot
par(mfrow = c(1,1))

## Make plot for sub metering 1
plot(x= HPC$Datetime,
     y = HPC$Sub_metering_1,
     type = "l", 
     xlab = "",
     col = "black",
     ylab = "Energy sub metering")

## Add line for sub metering 2
lines(x= HPC$Datetime,
     y = HPC$Sub_metering_2,
     type = "l", 
     col = "red")

## Add line for sub metering 3
lines(x= HPC$Datetime,
     y = HPC$Sub_metering_3,
     type = "l",
     col = "blue")

## Add legend box
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,col = c("black","red","blue"),
       #fill = TRUE,
       pch = "__")

## Close PNG device
dev.off()


