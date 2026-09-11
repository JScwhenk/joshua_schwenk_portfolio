################################################################################
#Critical Thinking 5
################################################################################
##Read CVS file & View Data Structure
getwd()
telco <- read.csv("MIS470Telcocustomer.csv", stringsAsFactors = TRUE)
str(telco)

# install.packages("caret")
library(caret)

################################################################################
# Prep data. Partition data into training and testing partitions
intrain <- createDataPartition(telco$Churn, p = 0.7, list = FALSE)
set.seed(2017)
training <- telco[intrain, ]
testing <- telco[-intrain, ]

###############################################################################
# Create a Logistic model for churn with training data
LogModel <- glm(Churn ~ ., family = binomial(link = "logit"), data = training)
summary(LogModel)

# Evaluate model with testing data
testing$Churn <- as.character(testing$Churn)
testing$Churn[testing$Churn == "No"] <- "0"
testing$Churn[testing$Churn == "Yes"] <- "1"
fitted.results <- predict(LogModel, newdata = testing, type = "response")
fitted.results <- ifelse(fitted.results > 0.5, 1, 0)
misClasificError <- mean(fitted.results != testing$Churn)

# Display a confusion matrix using the table() function
confusionmatrix <- table(Predicted = fitted.results, Actual = testing$Churn)
confusionmatrix

# Accuracy
accuracy <- 1 - misClasificError
accuracy

###############################################################################
# Create and evaluate logistic model using Contract
LogModelC <- glm(Churn ~ Contract, family = binomial(link = "logit"), data = training)
summary(LogModelC)

# Evaluate model with testing data
fitted.resultsC <- predict(LogModelC, newdata = testing, type = "response")
fitted.resultsC <- ifelse(fitted.resultsC > 0.5, 1, 0)
misClasificErrorC <- mean(fitted.resultsC != testing$Churn)

# Display a confusion matrix using the table() function
confusionmatrixC <- table(Predicted = fitted.resultsC, Actual = testing$Churn)
confusionmatrixC

# Accuracy
accuracyC <- 1 - misClasificErrorC
accuracyC

###############################################################################
# Create and evaluate logistic model using PaperlessBilling
LogModelP <- glm(Churn ~ PaperlessBilling, family = binomial(link = "logit"), data = training)
summary(LogModelP)

# Evaluate model with testing data
fitted.resultsP <- predict(LogModelP, newdata = testing, type = "response")
fitted.resultsP <- ifelse(fitted.resultsP > 0.5, 1, 0)
misClasificErrorP <- mean(fitted.resultsP != testing$Churn)

# Display a confusion matrix using the table() function
confusionmatrixP <- table(Predicted = fitted.resultsP, Actual = testing$Churn)
confusionmatrixP

# Accuracy
accuracyP <- 1 - misClasificErrorP
accuracyP

###############################################################################
# Create and evaluate logistic model using tenure_group
LogModelT <- glm(Churn ~ tenure_group, family = binomial(link = "logit"), data = training)
summary(LogModelT)

# Evaluate model with testing data
fitted.resultsT <- predict(LogModelT, newdata = testing, type = "response")
fitted.resultsT <- ifelse(fitted.resultsT > 0.5, 1, 0)
misClasificErrorT <- mean(fitted.resultsT != testing$Churn)

# Display a confusion matrix using the table() function
confusionmatrixT <- table(Predicted = fitted.resultsT, Actual = testing$Churn)
confusionmatrixT

# Accuracy
accuracyT <- 1 - misClasificErrorT
accuracyT

###############################################################################
# Evaluate the three significant predictors collectively
LogModelCollectively <- glm(Churn ~ Contract + PaperlessBilling + tenure_group,
                            family = binomial(link = "logit"),
                            data = training)
summary(LogModelCollectively)

# Evaluate model with testing data
fitted.resultsCollectively <- predict(LogModelCollectively, newdata = testing, type = "response")
fitted.resultsCollectively <- ifelse(fitted.resultsCollectively > 0.5, 1, 0)
misClasificErrorCollectively <- mean(fitted.resultsCollectively != testing$Churn)

# Display a confusion matrix using the table() function
confusionmatrixCollectively <- table(Predicted = fitted.resultsCollectively, Actual = testing$Churn)
confusionmatrixCollectively

# Accuracy
accuracyCollectively <- 1 - misClasificErrorCollectively
accuracyCollectively

#Record Time & Date
Sys.time()

