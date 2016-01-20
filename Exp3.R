NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)

maryland <- NEI[NEI$fips=="24510",]

a1 <- aggregate(Emissions~year+type,maryland,sum)

png("plot3.png",width=640,height=480)

g <- ggplot(a1,aes(year,Emissions,color=type))
g <- g + geom_line() + labs(x="Years",y="Total Emissions") + ggtitle("Emissions in Baltimore City as per type")
print(g)
dev.off()
