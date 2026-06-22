chicks <- read.csv('chicks.csv')
View(chicks)

chicks$weight[NA]
mean(chicks$weight, na.rm = T)

chicks[chicks$feed == 'casein', ]

# remove NA at source
which(!is.na(chicks$weight))
chicks <- chicks[!is.na(chicks$weight),]
chicks

# another way -- subsetting
chicks <- subset(chicks, !is.na(weight)) # chicks is assumes

soybean_chicks <- subset(chicks, feed == 'soybean')
soybean_chicks

#####

chicks
rownames(chicks)
# we've removed row 7 with the filter
# we should reset the rownames to make them contiguous
rownames(chicks) <- NULL
rownames(chicks)

####

sum(chicks$feed == 'soybean')

### lesson 2 / 1.04 hrs