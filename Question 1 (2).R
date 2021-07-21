#b) i)
# This is a binomial distribution with size of the sample 75 and
# probability 0.15 of success

#b) ii)
lessthanfourtyb <- pbinom(40, 75, 3/20)
lessthanfourteenb <- pbinom(14, 75, 3/20)
fifteentofourteenb <- lessthanfourtyb - lessthanfourteenb
fifteentofourteenb

#b) iii)
x <- seq(0, 75, by = 1)
y <- dbinom(x, 75, 3/20)
plot(x, y, type="p", xlab="X", ylab="f(x = X)", col=2, lwd=2, 
     main="Pf of a Binomial(n=75, p=3/20)")

#b) iv)
library(distr)
X <- Binom(size=75, p=3/20)
plot(X, to.draw.arg = "p", xlab="X", ylab="F(x<= X)")

#b) v)
twentyfiveq <- qbinom(0.25, 75, 3/20)
fiftyq <- qbinom(0.5, 75, 3/20)
seventyfiveq <- qbinom(0.75, 75, 3/20)
print(twentyfiveq)
print(fiftyq)
print(seventyfiveq)

#c)
# The probabilities and the percentiles are similar and we can expect
# this as the total number of objects is large and the number being drawn is
# relatively small thus the binomial distribution of this case is a good
# approximation for the hypergeometric distribution
