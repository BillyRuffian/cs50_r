chicks <- read.csv('chicks.csv')
View(chicks)

chicks$weight[NA]
mean(chicks$weight, na.rm = T)

chicks[chicks$feed == 'casein', ]

# remove NA at source
