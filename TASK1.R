#Mayur Mengane
#Task 1
#TSFGRIP
#Import Data in R
data<-file.choose()

#Since file includes header 
head(data)
#Scatter plot
plot(Hours, Scores)

#Use lm fucntion for regression to get intercept and slope coefficients
model=lm(Scores~Hours)
model

#Add a regression line in the scatterplot
abline(a=2.484, b=9.776, col="Red",lwd=2)

#View summary and anova of dataset
summary(model)
anova(model)

# Add predicted value in data
data$predicted<-model$fitted.values

#To predict the score of student who studies for 9.25 hrs/day
predict(model,data.frame(Hours=9.25))


#To verfiy we will manully compute predicted value using regression equation
Y=2.484+9.776*9.25
Y
# That is the students who studies for 9.25 hrs/day will get aprrox 93 marks
