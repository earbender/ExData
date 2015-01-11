with(data_full, plot(data_full$DateTime, type = "n"))  #create plot


plot(data_full$DateTime, data_full$Sub_metering_3, type = "l", xlab = "   ", ylab = "Energy
     sub metering")   #add data w/color

data_full$Sub_metering_2 <- as.numeric(data_full$Sub_metering_2)

plot(data_full$DateTime, type = "l", lwd = 2, 
     xaxt="n", ylim = c(0,40), ylab = "Energy Sub Metering")  #create plot
lines(data_full$Sub_metering_1, col = "black", type = "l")
lines(data_full$Sub_metering_2, col = "red", type = "l")
lines(data_full$Sub_metering_3, col = "blue", type = "l")
legend("topright", pch = 1, col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2",
                                                                       "Sub_metering_3"))


plot(data_full$DateTime,type="l",lwd=2,
     xaxt="n",ylim=c(0,40),col="black", ylab="Energy
     Sub Metering")
lines(data_full$Sub_metering_1, col = "black",type="l")
lines(data_full$Sub_metering_2, col = "red",type="l")
lines(data_full$Sub_metering_3, col = "blue",type="l")
                                                               
??axt()
