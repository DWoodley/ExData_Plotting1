
## Open PNG device
png(filename = "Plot1.png",width = 480,height=480)

## make sure the device has single plot
par(mfrow = c(1,1))

## Make histogram
hist(HPC$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", 
     col = "red")

## Close PNG device
dev.off()