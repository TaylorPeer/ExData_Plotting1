raw <-read.table("household_power_consumption.txt", fill=TRUE, header=T, sep=";")
clean <- transform(raw, Date = as.Date(Date, format="%d/%m/%Y"), Time = strptime(Time, format="%T"))
subset <- subset(clean, Date >="2007-02-01" & Date <= "2007-02-02")

png('plot1.png')
hist(as.numeric(as.character(subset$Global_active_power)), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()
