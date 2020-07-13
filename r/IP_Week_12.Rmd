---
title: "Moringa_School_Independent_Project"
author: "Tom_Kinyanjui_Njoroge"
date: "July 11, 2020"
output: html_document
---
#Introduction 
##Defining the question 
In this project I will attempt to compare how different variables affect whether or not a user clicks on an ad or not these factors include thier age, income, sex, daily internet usage, and time spent on particular sites 
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

## Defining metric of success 
I can successfully draw insights on major factors that are likely to affect whether a user click on an ad

##Reading our data 
```{r}
advertising <- read.csv("file:///C:/Users/HP/Downloads/advertising.csv")
head(advertising)
```
##Checking the data 
Data types 
```{r}
str(advertising)
```
size 
```{r}
dim(advertising)
```
null values 
```{r}
colSums(is.na(advertising))
```
Duplicates 
```{r}
duplicated(advertising)
```
#Tydying the dataset 
checking for outliers 
```{r}
boxplot(Age, xlab="Age",main="Boxplot on Age")
boxplot(Daily.Internet.Usage, xlab="Daily Internet Usage", main="Boxplot of Daily Internet Usage")
boxplot(Male, xlab="Male", main="Boxplot of Male")
boxplot(Area.Income,xlab="Area Income",main="Boxplot on Area Income")
boxplot(Clicked.on.Ad, xlab="Clicked on Ad", main="Boxplot of Clicked on Ad")
```
#Univariate analysis 
Numerical Columns 
```{r}
num_cols <- unique(advertising)
num_cols
```


Mean of the numerical columns 
```{r}
mean(num_cols$Daily.Time.Spent.on.Site)
mean(num_cols$Age)
mean(num_cols$Area.Income)
mean(num_cols$Daily.Internet.Usage)
mean(num_cols$Male)
mean(num_cols$Clicked.on.Ad)
```
Quantiles of our numerical columns 
```{r}
quantile(num_cols$Daily.Time.Spent.on.Site)
quantile(num_cols$Age)
quantile(num_cols$Area.Income)
quantile(num_cols$Daily.Internet.Usage)
quantile(num_cols$Male)
quantile(num_cols$Clicked.on.Ad)
```
Histogram plot 
```{r}
hist(num_cols$Daily.Time.Spent.on.Site, breaks = 20,main ="Daily Time Spent on Site", col = "dodgerblue")
hist(num_cols$Age, breaks = 10,main = "Age",col = "dodgerblue")
hist(num_cols$Area.Income, breaks = 20, main = "Area Income",col = "dodgerblue")
hist(num_cols$Daily.Internet.Usage,breaks = 20,main = "Daily Internet Usage",col = "dodgerblue")
hist(num_cols$Male,breaks = 10,main = "Male",col = "dodgerblue")
hist(num_cols$Clicked.on.Ad,breaks = 10,main = "Clicked on Ad",col = "dodgerblue")
```
#Bivariate analysis  
Scatter plots 
```{r}
area.income <- num_cols$Area.Income
internet.usage <- num_cols$Daily.Internet.Usage
time.spent <- num_cols$Daily.Time.Spent.on.Site
age <- num_cols$Age
plot(area.income, internet.usage, xlab="Area Income",ylab = "Daily Internet Usage")
plot(area.income,time.spent,xlab = "Area Income",ylab = "Daily Time Spent on the Internet")
plot(time.spent,internet.usage, xlab="Daily Time spent", ylab="Daily Internet Usage")
plot(age,time.spent,, xlab="Age", ylab="Daily Internet Usage")
```

```{r}

```

