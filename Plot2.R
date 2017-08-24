plot2 <- function(x=NULL){
        pfile<- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",stringsAsFactors = FALSE)        
        pfile$Date <- as.Date(pfile$Date,"%d/%m/%Y")
        pfile <- subset(pfile,Date >= "2007-02-01" & Date <= "2007-02-02")
        png(file="plot2.png",bg="transparent")
        plot(with(pfile,as.POSIXct(paste(Date,Time))),pfile$Global_active_power,xlab = "",ylab="Global Active Power (Kilowatts)",type="l")
        dev.off()
}
