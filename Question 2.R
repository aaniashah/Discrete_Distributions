#2a)
# I think the distribution of Xa is a binomial distribution with N = 3 and
# probability of success p = 1 - pa
# I think the distribution of Xb is a binomial distribution with N = 6 and
# probability of success p = 1 - pb

#2b)i)
set.seed(20870815)
N <- 10000
all_sampleAb <- rbinom(N, 3, 0.9)
head(all_sampleAb)

all_sampleBb <- rbinom(N, 6, 0.8)
head(all_sampleBb)

#2b)ii)
my_count_Ab <- 0
for (i in all_sampleAb) {
  if (i >= 2) {
    my_count_Ab <- my_count_Ab + 1
  }
}

my_count_B <- 0
for (i in all_sampleBb) {
  if (i >= 3) {
    my_count_Bb <- my_count_Bb + 1
  }
}


#2c)i)
set.seed(20870815)
N <- 10000
all_sampleAc <- rbinom(N, 3, 0.1)
head(all_sampleAc)

all_sampleBc <- rbinom(N, 6, 0.2)
head(all_sampleBc)

#2c)ii)
my_count_Ac <- 0
for (i in all_sampleAc) {
  if (i >= 2) {
    my_count_Ac <- my_count_Ac + 1
  }
}

my_count_Bc <- 0
for (i in all_sampleBc) {
  if (i >= 3) {
    my_count_Bc <- my_count_Bc + 1
  }
}

# Since the number of days out of 10000 that Plant B passes the manufacturing 
# requirements (9809) is more than that of Plant A (9708), Pavlov should choose 
# Plant B

# Since the number of days out of 10000 that Plant B passes the manufacturing 
# requirements (1005) is more than that of Plant A (292), Pavlov should choose 
# Plant B


