NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

a <- aggregate(Emissions~year, NEI, sum)

png('plot1.png')
barplot(height=a$Emissions,names.arg=a$year,xlab="Years",ylab="Total Emissions",main="Total Emissions at various years")
dev.off()
