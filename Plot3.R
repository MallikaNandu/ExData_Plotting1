plot3 <- function(x=NULL){
        pfile<- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",stringsAsFactors = FALSE)        
        pfile$Date <- as.Date(pfile$Date,"%d/%m/%Y")
        pfile <- subset(pfile,Date >= "2007-02-01" & Date <= "2007-02-02")
        png(file="plot3.png",bg="transparent")
        plot(with(pfile,as.POSIXct(paste(Date,Time))),pfile$Sub_metering_1,xlab = "",ylab="Energy sub metering",type="l")
        points(with(pfile,as.POSIXct(paste(Date,Time))),pfile$Sub_metering_2,type="l",col="red")
        points(with(pfile,as.POSIXct(paste(Date,Time))),pfile$Sub_metering_3,type="l",col="blue")
        legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=1,lty=1,col=c("black","red","blue"))
        dev.off()
}
