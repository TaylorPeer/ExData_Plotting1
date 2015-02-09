raw <-read.table("household_power_consumption.txt", fill=TRUE, header=T, sep=";")
clean <- transform(raw, Date = as.Date(Date, format="%d/%m/%Y"), Time = strptime(Time, format="%T"))
subset <- subset(clean, Date >="2007-02-01" & Date <= "2007-02-02")

png('plot3.png')
plot(as.numeric(as.character(subset$Sub_metering_1), subset$Time), , type="l", ylab="Energy sub metering", xlab="")
lines(as.numeric(as.character(subset$Sub_metering_2)), col="red")
lines(as.numeric(as.character(subset$Sub_metering_3)), col="blue")
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, lty=c(1))

dev.off()
