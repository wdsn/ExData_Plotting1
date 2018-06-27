png("plot2.png",
    width     = 480,
    height    = 480,
    units     = "px")

par(bg=NA) 

plot(data$DateTime, data$Global_active_power, type = "l", ann=FALSE)

title(ylab = "Global Active Power (kilowatts)")

dev.off()
