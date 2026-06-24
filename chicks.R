chicks <- read.csv('chicks.csv')
# View(chicks)

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

# let's make somethng interactive
feed_options <- unique(chicks$feed)

# cat('1.', feed_options[1], '\n')
# cat('2.', feed_options[2], '\n')
# cat('3.', feed_options[3], '\n')
# cat('4.', feed_options[4], '\n')
# cat('5.', feed_options[5], '\n')
# cat('6.', feed_options[6], '\n')

formatted_options <- paste0(1:length(feed_options), '. ', feed_options)

cat(formatted_options, sep = '\n')

feed_choice <- as.integer(readline('Feed type: '))

if(feed_choice < 1 || feed_choice > 6) {
  cat('Invalid choice')
} else {
  selected_feed <- feed_options[feed_choice]
  print(subset(chicks, feed == selected_feed))
}

