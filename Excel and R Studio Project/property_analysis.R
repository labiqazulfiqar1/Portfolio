#Install package and library
install.packages("readxl")
library(readxl)
#Upload property_data from Excel
property_data <- read_excel("C:/Users/Technezo/Downloads/zameen-property-property_data.xlsx")

#Question-1
#Find Mean,Median,Quartiles of property Types:
summary(property_data$price[property_data$property_type == "Flat"])
summary(property_data$price[property_data$property_type == "Farm House"])
summary(property_data$price[property_data$property_type == "Lower Portion"])
summary(property_data$price[property_data$property_type == "Upper Portion"])
summary(property_data$price[property_data$property_type == "Penthouse"])
summary(property_data$price[property_data$property_type == "Room"])
summary(property_data$price[property_data$property_type == "House"])

#Question-2
#Find Mean,Median and Quartiles of Cities:
summary(property_data$price[property_data$city == "Karachi"])
summary(property_data$price[property_data$city == "Lahore"])
summary(property_data$price[property_data$city == "Islamabad"])


#Question-3
#Create Scatter Plot of Price vs Bedrooms:
plot(property_data$price, property_data$bedrooms, 
     main = "Scatter Plot of price vs bedrooms", 
     xlab = "price", 
     ylab = "bedrooms", 
     pch = 19,         # Type of point
     col = "orange")     # Color of points

#Correlation between Time and Amount Spent:
cor(property_data$price, property_data$bedrooms)