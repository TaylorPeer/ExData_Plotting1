raw <-read.table("household_power_consumption.txt", fill=TRUE, header=T, sep=";")
clean <- transform(raw, Date = as.Date(Date, format="%d/%m/%Y"), Time = strptime(Time, format="%T"))
subset <- subset(clean, Date >="2007-02-01" & Date <= "2007-02-02")

png('plot2.png')
plot(as.numeric(as.character(subset$Global_active_power), subset$Time), type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()
