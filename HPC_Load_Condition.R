
## Read "household_power_consumption.txt" file
HPC <- read.table("household_power_consumption.txt",
                  header = TRUE,
                  sep = ";",
                  colClasses = "character")

##Convert Date and Time text column into a single Datetime column
HPC$Datetime <- strptime(paste(HPC$Date,HPC$Time),format = "%d/%m/%Y %H:%M:%S")

## Keep records only for dates and times between "2007-02-01" and "2007-02-02"
HPC <- HPC[HPC$Datetime >= "2007-02-01" & HPC$Datetime < "2007-02-03",]

## Convert required columns to numeric format
HPC$Global_active_power <- as.numeric(HPC$Global_active_power)
HPC$Sub_metering_1 <- as.numeric(HPC$Sub_metering_1)
HPC$Sub_metering_2 <- as.numeric(HPC$Sub_metering_2)
HPC$Sub_metering_3 <- as.numeric(HPC$Sub_metering_3)
HPC$Voltage <- as.numeric(HPC$Voltage)
HPC$Global_reactive_power <- as.numeric(HPC$Global_reactive_power)