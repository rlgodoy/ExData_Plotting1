names<-names(read.table("C:/Users/Rodrigo/Documents/Coursera/Exploratory Data Analysis/Project/household_power_consumption.txt", nrows=2880, sep=";", header=TRUE))
data<-read.table("C:/Users/Rodrigo/Documents/Coursera/Exploratory Data Analysis/Project/household_power_consumption.txt", skip= 66637,nrows=2880, sep=";", col.names=names)
png(filename="C:/Users/Rodrigo/Documents/Coursera/Exploratory Data Analysis/Project/plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

