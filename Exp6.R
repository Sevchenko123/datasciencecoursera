NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)

maryland_LA <- NEI[(NEI$fips=="24510"|NEI$fips=="06037")& NEI$type=="ON-ROAD",]

a11 <- aggregate(Emissions~year+fips,maryland_LA,sum)
a11$fips[a11$fips=="24510"] <- "Batimore City, MD"
a11$fips[a11$fips=="06037"] <- "Los Angeles, CA"

png("plot6.png",width=800,height=600)

g <- ggplot(a11,aes(factor(year),Emissions))
g <- g + facet_grid(.~fips)
g <- g + geom_bar(stat="identity") + labs(x="Years",y="Total Emissions") + ggtitle("Total Emissions from motor vehicles in Baltimore City and Los Angeles")
print(g)
dev.off()
