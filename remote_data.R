url <- 'https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv'

voters <- read.csv(url)

nrow(voters)
ncol(voters)

voters$voter_category

unique(voters$voter_category)

voters$Q22

# this gives us a factor but does not appear to change the
# column on the dataframe -- it doesn't add the factor
factor(voters$Q21,
       labels = c('Yes', 'No', 'Not sure'),
       exclude = c(-1))

voters$Q22

# View(voters)
