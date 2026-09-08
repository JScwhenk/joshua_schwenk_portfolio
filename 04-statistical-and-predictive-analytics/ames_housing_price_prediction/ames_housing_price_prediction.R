#-------------------------------------------------------------------------------
#Portfolio Project Milestone 4
#-------------------------------------------------------------------------------
#Loading in the Tidyverse Library
library(tidyverse)

#Set Directory
setwd()

#Read File into R
trainingdata <- read.csv("MIS470HousingTraining(1000x25).csv", header = TRUE)

#View Data & Structure to Confirm Data Imported Correctly
glimpse(trainingdata)

#Descriptive Statistics for Sales Price Variable
summary(trainingdata$SalePrice)
sd(trainingdata$SalePrice)

# Calculate the Freedman-Diaconis Bin Width
binwidth <- 2 * IQR(trainingdata$SalePrice) / (length(trainingdata$SalePrice)^(1/3))
binwidth

#Create Histogram
ggplot(trainingdata, aes(x = SalePrice)) +
  geom_histogram(binwidth = 20000, fill = "blue", color = "black") +
  labs(
    title = "Distribution of Sale Prices",
    x = "Sale Price",
    y = "Frequency"
  ) +
  scale_x_continuous(labels = scales :: dollar)

#Time & Date
Sys.time()

#---------------------------------------------------------------------------------------------------------
#Portfolio Project - Final
#---------------------------------------------------------------------------------------------------------
#Read Testing File into R
testingdata <- read.csv("MIS470housingtesting(460x25).csv", header = TRUE)

#View Data & Structure to Confirm Data Imported Correctly
glimpse(testingdata)

#---------------------------------------------------------------------------------------------------------
#Descriptive Statistics for Testing SalesPrice Variable
summary(testingdata$SalePrice)
sd(testingdata$SalePrice)

#---------------------------------------------------------------------------------------------------------
#Create Testing SalePrice Histogram
ggplot(testingdata, aes(x = SalePrice)) +
  geom_histogram(binwidth = 20000, fill = "orangered3", color = "black") +
  labs(
    title = "Distribution of Testing Sale Prices",
    x = "Sale Price",
    y = "Frequency"
  ) +
  scale_x_continuous(labels = scales :: dollar)

#Combining Training & Testing Data
combineddata <- bind_rows(trainingdata, testingdata)

#Create Combined SalePrice Histogram
ggplot(combineddata, aes(x = SalePrice)) +
  geom_histogram(binwidth = 20000, fill = "purple3", color = "black") +
  labs(
    title = "Distribution of Combined Sale Prices",
    x = "Sale Price",
    y = "Frequency"
  ) +
  scale_x_continuous(labels = scales :: dollar)

#---------------------------------------------------------------------------------------------------------
#Linear Regression Model for Training SalePrice
traininglm <- lm(SalePrice ~ ., data=trainingdata)
summary(traininglm)

#---------------------------------------------------------------------------------------------------------
#Remove Missing Values (NA) from Testing Data Set
cleantesting <- testingdata[complete.cases(testingdata), ]
glimpse(cleantesting)

#First 20 rows of cleantesting Data
first20cleantesting <- cleantesting[1:20, ]
first20cleantesting

#Predict Sales Price using first20cleantesting
prediction <- predict(traininglm, newdata=first20cleantesting)

#Comparing Actual vs Predicted Values
comparison <- data.frame(
  Actual = first20cleantesting$SalePrice,
  Predicted = prediction)
comparison

#---------------------------------------------------------------------------------------------------------
#Mean Absolute Error (MAE) & Mean Absolute Percentage Error (MAPE)
mae <- mean(abs(comparison$Actual - comparison$Predicted))
mae
mape <- mean(abs((comparison$Actual - comparison$Predicted) / comparison$Actual)) * 100
mape

#Visualization for Actual vs Predicted Values
ggplot(comparison, aes(x = Actual, y = Predicted)) +
  geom_point(size = 3, alpha = 0.7, color = "steelblue4") +
  geom_abline(intercept = 0, slope = 1, linewidth = 1, color = "red") +
  labs(
    title = "Actual vs Predicted Sale Prices",
    x = "Actual Sale Price",
    y = "Predicted Sale Price"
  ) +
  scale_x_continuous(labels = scales::dollar) +
  scale_y_continuous(labels = scales::dollar)

#---------------------------------------------------------------------------------------------------------
#Time & Date
Sys.time()