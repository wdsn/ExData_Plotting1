
png("plot4.png",
    width     = 480,
    height    = 480,
    units     = "px",
    res=80)

par(mfrow=c(2,2))

par(bg=NA) 


## Place one (Global Active Power)

plot(data$DateTime, data$Global_active_power, type = "l", ann=FALSE, cex.axis = 0.8)

title(ylab = "Global Active Power", cex.lab = .8)

## Place two (Voltage)

plot(data$DateTime, data$Voltage, type = "l", ann=FALSE, cex.axis = 0.8)

title(ylab = "Voltage", xlab = "datetime", cex.lab = .8)

## Place three (Energy sub metering)

plot(data$DateTime, data$Sub_metering_1, type = "l", ann=FALSE, cex.axis = 0.8)

lines(data$DateTime, data$Sub_metering_2, type = "l", ann=FALSE, col = "red")

lines(data$DateTime, data$Sub_metering_3, type = "l", ann=FALSE, col = "blue")

title(ylab = "Energy sub metering", cex.lab = .8)

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, cex = .80, bty = "n")

## Place four (Global reactive power)

plot(data$DateTime, data$Global_reactive_power, type = "l", ann=FALSE, cex.axis = 0.8)

title(ylab = "Global_reactive_power", xlab = "datetime", cex.lab = .8)


dev.off()
