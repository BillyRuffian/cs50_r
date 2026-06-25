q1 <- read.csv('Q1.csv')
q1$quarter <- 'Q1'

q2 <- read.csv('Q2.csv')
q2$quarter <- 'Q2'

q3 <- read.csv('Q3.csv')
q3$quarter <- 'Q3'

q4 <- read.csv('Q4.csv')
q4$quarter <- 'Q4'

sales <- rbind(q1, q2, q3, q4)
sales$value <- ifelse(sales$sale_amount > 100, 'High', 'Regular')

View(sales)
