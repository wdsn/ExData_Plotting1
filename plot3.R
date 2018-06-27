png("plot3.png",
    width     = 480,
    height    = 480,
    units     = "px")

plot(data$DateTime, data$Sub_metering_1, type = "l", ann=FALSE)

lines(data$DateTime, data$Sub_metering_2, type = "l", ann=FALSE, col = "red")

lines(data$DateTime, data$Sub_metering_3, type = "l", ann=FALSE, col = "blue")

title(ylab = "Energy sub metering")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

dev.off()
