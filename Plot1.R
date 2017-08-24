plot1 <- function(x=NULL){
        pfile<- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",stringsAsFactors = FALSE)        
        pfile$Date <- as.Date(pfile$Date,"%d/%m/%Y")
        pfile <- subset(pfile,Date >= "2007-02-01" & Date <= "2007-02-02")
        png(file="plot1.png",bg="transparent")
        hist(pfile$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
        dev.off()
}
