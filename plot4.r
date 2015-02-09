raw <-read.table("household_power_consumption.txt", fill=TRUE, header=T, sep=";")
clean <- transform(raw, Date = as.Date(Date, format="%d/%m/%Y"), Time = strptime(Time, format="%T"))
subset <- subset(clean, Date >="2007-02-01" & Date <= "2007-02-02")

png('plot4.png')
par(mfrow=c(2,2))
# Graph 1
plot(as.numeric(as.character(subset$Global_active_power), subset$Time), type="l", ylab="Global Active Power (kilowatts)", xlab="")
# Graph 2
plot(as.numeric(as.character(subset$Voltage), subset$Time), type="l", ylab="Voltage", xlab="datetime")
# Graph 3
plot(as.numeric(as.character(subset$Sub_metering_1), subset$Time), , type="l", ylab="Energy sub metering", xlab="")
lines(as.numeric(as.character(subset$Sub_metering_2)), col="red")
lines(as.numeric(as.character(subset$Sub_metering_3)), col="blue")
# Graph 4
plot(as.numeric(as.character(subset$Global_reactive_power), subset$Time), type="l", ylab="Global_reactive_power", xlab="datetime")

par(mfrow=c(1,1))
dev.off()
