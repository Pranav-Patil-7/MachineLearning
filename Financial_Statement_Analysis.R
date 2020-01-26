

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Profit for Each Month

profit1 <- revenue - expenses
profit1


#Profit after Tax for each month(the tax rate is 30%)

tax1 <- round(profit1 * 0.3)
tax1

profit1.after.tax <- profit1 - tax1
profit1.after.tax


#Profit Margin for each month - equals to profit a after tax divided by revenue

profit1.margin <- round(profit1.after.tax/ revenue, 2)  * 100
profit1.margin

#Good Months - where the profit after tax was greater than the mean for the year

mean_pat <- mean(profit1.after.tax)
mean_pat

good.months <- profit1.after.tax > mean_pat
good.months


#BadMonths - where the profit after tax was less than the mean for the year

bad.months <-good.months
bad.months


#The Best Month - where the profit after tax was max for the year

best.month <- profit1.after.tax == max(profit1.after.tax)
best.month
rep(8140.68, 12)



#The Worst Month - where the profit after tax was min for the year


worst.month <- profit1.after.tax == max(profit1.after.tax)
worst.month



#Units of Thousands

revenue.1000 <- round(revenue  / 1000)
expenses.1000 <- round(expenses / 1000)
profit1.1000 <- round(profit1 / 1000)
profit1.after.tax.1000 <- round(profit1.after.tax / 1000)



#Output

revenue.1000
expenses.1000
profit1.1000
profit1.after.tax.1000
profit1.margin
good.months
bad.months
best.month
worst.month

#matrices

m <- rbind(
  revenue.1000,
  expenses.1000,
  profit1.1000,
  profit1.after.tax.1000,
  profit1.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
  
)
m

