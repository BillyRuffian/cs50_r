load('temps.RData')

temps
temps[2]
temps[c(2,4,7)]

# remove elements and drop them
# does not mutate
temps[-c(2,4,7)]
temps

# a logical expr to filter
temps[temps < 0]

# find indicies
which(temps < 0)

# Single & and | are used for logical vector ops
temps < 0 | temps > 60
which(temps < 0 | temps > 60)
any(temps < 0 | temps > 60)
all(temps < 0 | temps > 60)

temps[- temps < 0 | temps > 60]

# inverting values
filter <- !(temps < 0 | temps > 60)
temps[filter]

