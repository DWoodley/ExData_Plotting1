## Open PNG device
png(filename = "Plot2.png",width = 480,height=480)

## make sure the device has single plot
par(mfrow = c(1,1))

## Make plot
plot(x= HPC$Datetime,
      y = HPC$Global_active_power,
      type = "l", 
      xlab = "", 
      ylab = "Global Active Power (kilowatts)")

## Close PNG device
dev.off()