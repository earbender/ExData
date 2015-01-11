

plot(data3$Date, data3$Global_active_power, type = "p", 
     ylab = "Global Active Power (watts)")  # plots with date but we need time too

#create date and time column



dates <- as.Date(data3$Date, format = "%d/%m/%Y")  #change date format
times <- data3$Time #extract time column
DateTime <- as.POSIXct(paste(as.character(dates), as.character(times))) #create DateTime in new format
data_full <- data3  # create new data frame 
data_full$DateTime <- DateTime #add column in new format

head(data_full)  #check to see if column was created 

with(data_full, plot(data_full$DateTime, type = "n"))

plot(data_full$DateTime, data_full$Global_active_power, type = "l", main = "Plot 2", xlab = "   ", ylab = "Global
     Active Power (watts)")
