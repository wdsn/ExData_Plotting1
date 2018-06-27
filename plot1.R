
png("plot1.png",
    width     = 480,
    height    = 480,
    units     = "px")

par(bg=NA) 

hist(data$Global_active_power, col = "red", col.main = "black", xlab = "Global Active Power (kilowatts)",col.lab = "black", ylab = "Frequency", main = "Global Active Power", bg = "transparent")

dev.off()
