### Financial statement
### example from Course - adapted
#Data
#revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
#expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

revenue <- rnorm(12, 10000, sd = 5000)
expenses <- rnorm(12, 5000, sd = 1000)

#Assignments
if(length(revenue) == length(expenses)){
  
  #profit for each month
  profit_month = revenue - expenses
  
  #profit after tax for each month (the tax rate is 30%)
  revenue_tax = round(revenue * (0.7), 2)
  profit_tax = revenue_tax - expenses
  names(profit_tax) <- c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
  
  #profit margin for each month - equals to profit a after tax divided by revenue
  margin = round(profit_tax/revenue, 2)
  names(margin) <- c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
  
  # good months - where the profit after tax was greater than the mean for the year
  good = (profit_tax > mean(profit_tax))
  for(i in 1:12){
    if(good[i] == TRUE){
      print(good[i])
    }
  }
  
  #bad months - where the profit after tax was less than the mean for the year
  bad = (profit_tax < mean(profit_tax))
  for(i in 1:12){
    if(bad[i] == TRUE){
      print(good[i])
    }
  }
  
  #the best month - where the profit after tax was max for the year
  max_profit = round(max(profit_tax), 2)
  
  #the worst month - where the profit after tax was min for the year
  min_profit = round(min(profit_tax), 2)
  }

profit_tax
names(revenue) <- c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
revenue["jan"]

