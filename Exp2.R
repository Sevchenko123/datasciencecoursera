NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

maryland <- NEI[NEI$fips=="24510",]

a <- aggregate(Emissions~year,maryland,sum)

png('plot2.png')
barplot(height=a$Emissions,names.arg=a$year,xlab="Years",ylab="Total Emissions",main="Total Emissions at Baltimore City, MD")
dev.off()
