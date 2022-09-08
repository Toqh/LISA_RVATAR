


#barchart for age, sex, survived. make it fine

# download your dataset
# save it into rvater folder
# read it into r

data = read.csv("Titanic data.csv", header = TRUE)
View(data)

data
attach(data)

#------
SexTable = table(as.factor(Sex))
barplot(SexTable)

#------
hist(Age)
#repeat the same for PClass and Survived

# the class of passengers does it affect whether they died or not\
# yes or no
# the gender of the passengers, does it affect whether they died or not
# yes or no


# H0 = The variables are not independent ---null hypothesis 
# H1 = The variables are independent  --- alternative hypothesis.

#Statement: The class of the passengers affect their survival
# H0 : No (Null Hypothesis) (P-Value < 0.05 (reject))
# H1 : Yes (Alternative Hypthesis) 
chisq.test(Pclass,Survived)
chisq.test(Sex,Survived)

# create a boxplot of age. against sex; survived, pclass,

boxplot(Age ~ Pclass)
