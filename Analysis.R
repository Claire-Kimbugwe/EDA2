
NEI <- readRDS("C:/Users/Claire/Desktop/Rough Work/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/Claire/Desktop/Rough Work/Source_Classification_Code.rds")
head(NEI)
table(NEI$year)
hist(NEI$Emissions)
Nei1999 <- subset(NEI, year== 1999)
Nei2002 <- subset(NEI, year == 2002)
Nei2005 <- subset(NEI, year == 2005)
Nei2008 <- subset(NEI, year == 2008)
                  
Total_Emissions <- aggregate(Emissions ~ year, data = NEI , sum)

barplot(Total_Emissions$Emissions, names.arg =Total_Emissions$year,col = 6,
        main = "Total PM2.5 emission from all sources", xlab = "YEAR",
        ylab = "Total PM2.5 emissions")

dev.copy(png, "totalPM2.5.png", height =480,width =480)
dev.off()
