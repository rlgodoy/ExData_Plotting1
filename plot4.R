names<-names(read.table("C:/Users/Rodrigo/Documents/Coursera/Exploratory Data Analysis/Project/household_power_consumption.txt", nrows=2880, sep=";", header=TRUE))
data<-read.table("C:/Users/Rodrigo/Documents/Coursera/Exploratory Data Analysis/Project/household_power_consumption.txt", skip= 66637,nrows=2880, sep=";", col.names=names)
png(filename="C:/Users/Rodrigo/Documents/Coursera/Exploratory Data Analysis/Project/plot4.png", width = 480, height = 480)
dates<-paste(data$Date,data$Time)
datetime<- strptime(dates, "%d/%m/%Y %H:%M:%S")

layout(matrix(1:4, 2, 2))

plot(datetime,data$Global_active_power, main="Global Active Power", ylab="Global Active Power (kilowatts)",type="l")


plot(datetime, data$Sub_metering_1,  ylab="Energy sub metering", type="l",ylim=c(0, 40) )
par(new=TRUE)
plot(datetime, data$Sub_metering_2, ylab="Energy sub metering",col="red",  type="l",ylim=c(0, 40))
par(new=TRUE)
plot(datetime, data$Sub_metering_3, ylab="Energy sub metering",col="blue", type="l",ylim=c(0, 40))
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lwd=c(2,2,2), col=c("black","red", "blue"), bty="n")

plot(datetime,data$Voltage, ylab="Voltage",type="l")

plot(datetime,data$Global_reactive_power, ylab="Global_reactive_power",type="l")

dev.off()
