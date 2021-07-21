#3a)
# The distribution is Binomial, with n = N and p = 1/N

#3b)
# NC1 * (1/N) * (1 - 1/N)^(N - 1)
# N * (1 - 1/N)^(N - 1)

#3c)


#3d)i)
set.seed(20870815)
N  = 10000
all_samples= rbinom(N, 8, 1/8)
head(all_samples)

#3d)ii)
mean(all_samples)


#3e)i)
# I'd expect Y to have a larger mean as it is a distribution without replacement
# thus the probability of the letter reaching the correct person gets larger
# with each trial due to the number of people to send it to decreasing each time
# (as p = 1/N). Thus we can expect that on average the number of people who 
# received the correct letters based off of Y's distribution will be higher. 


#3e)ii)
set.seed(20870815)
N <- 10000
all_sample2 <- t(replicate(N, sample(1:8, 8, replace = FALSE, prob = rep(1/8, 8))))
a2 <- 1:N
for (row in 1:N) {
  count <- 0
  for (col in 1:8) {
    if (col == all_sample2[row,col]) {
      count <- count + 1
    }
  }
  a2[row] <- count
}
head(a2)

#3e)iii)
mean(a2)

#3f)
# The mean of the random variable Y is larger than the mean of variable X 
# by 0.0295. This isn't a very large difference, though it is a notable one.
# Note that we can say that X has a binomial distribution while Y has a 
# hypergeometric one as it is without replacement and since the size of the 
# sample taken is not very large, X can not be used to approximate Y, thus a
# a notable discrepancy is expected.

