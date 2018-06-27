## Source information

## Create folder structure if it doesn't alread exist, download the required data and unzip any zip files.

projectfile <- getwd()

if(!file.exists("./data")){
        
        dir.create("./data")
        setwd("./data")
        
} else {
        setwd("./data")
}

file <- "powerconsumption.zip"

if(!file.exists(paste(file))){
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", paste(file))
}

unzip(paste(file))
rm(file)

## Requred libraries

require(lubridate)

## Read in data

data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";", na = "?")

## Subset for required dates

data <- subset(data, data$Date == "1/2/2007" | data$Date ==  "2/2/2007")


## Adjust date and time variables

data$DateTime <- paste(data$Date, data$Time) # create combined variable
data$DateTime <- dmy_hms(data$DateTime, tz="Pacific/Auckland") # adjust formatting of variable

## Convert dates from character vector to date

dates <- data$Date
dates <- as.Date(dates, "%d/%m/%Y")
data$Date <- dates ## done as a separate variable for debugging
rm(dates)

setwd(projectfile)
