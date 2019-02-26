# read from csv and save it in a data frame
dataframe = read.csv('./2008.csv')
# checking reading first 6 rows of the dataframe
head(dataFrame)
#reading last 6 rows of dataFrame
tail(dataFrame)
# Accessing a particular column
orignColData = dataFrame$origin
#Applying condition on particular column value, lets say find the count of all the data, where IND is in origin column
sum(dataFrame$Origin == 'IND')
#multiple conditions separated by &
sum(dataFrame$Origin == 'IND' & dataFrame$dest == 'ORD')
#extracting dataset as subset
indDataFrame = subset(dataFrame, dataFrame$Origin=='IND')
#plot values based on column data set of subsetdataset
plot(table(indDataFrame$Month))
#Average
ave(indDataFrame$depDelay)
#checking NaN
is.na(indDataFrame$DepTime)
#sum using NaN value as 0
sum(indDataFrame$DepTime, na.rm=TRUE)
