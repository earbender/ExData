# code for reading the data


data2 <- household_power_consumption  # rename data set
data2$Date <- as.Date(data2$Date, "%d/%m/%Y")  # change date to date for indexing
data3 <- filter(data2, Date == "2007-02-01" | Date == "2007-02-02") # include only these days
head(data3)  #check to see if it worked
tail(data3)   # check to see if it worked

data3$Global_active_power <- as.numeric(data3$Global_active_power) #convert GAP column to numeric

hist(data3$Global_active_power, xaxt = 'n')
axis(side=1, at=seq(0,8000, 1000))
hist(data3$Global_active_power, col = "red", breaks = 20, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")   #one base call with many attributes
rug(data3$Global_active_power)

#code for saving it as a png
