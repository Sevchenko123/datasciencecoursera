NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEISCC <- merge(NEI,SCC,by="SCC")
library(ggplot2)

coal <- grepl("coal",NEISCC$Short.Name,ignore.case=TRUE)
subset_coal <- NEISCC[coal,]

a2 <- aggregate(Emissions~year,subset_coal,sum)

png("plot4.png",width=640,height=480)

g <- ggplot(a2,aes(factor(year),Emissions))
g <- g + geom_bar(stat="identity") + labs(x="Years",y="Total Emissions") + ggtitle("Total Emissions from coal sources from 1999-2008")
print(g)
dev.off()
