NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)

road <- NEI[NEI$fips=="24510"& NEI$type=="ON-ROAD",]

a3 <- aggregate(Emissions~year,road,sum)

png("plot5.png",width=800,height=600)
g <- ggplot(a3,aes(factor(year),Emissions))
g <- g + geom_bar(stat="identity") + labs(x="Years",y="Total Emissions") + ggtitle("Total Emissions from motor vehicles in Baltimore City,MD from 1999-2008")
print(g)
dev.off()
