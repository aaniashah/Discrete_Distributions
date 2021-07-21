# Q1)
# a) i)
# This is a Hypergeometric distribution, with the population,
# N = 2000, number of successes, r = 300 and number of objects in
# the sample is 75

# a)ii)
lessthanfourtyh <- phyper(40, 300, 1700, 75)
lessthanfifteenh <- phyper(15, 300, 1700, 75)
fifteenh <- dhyper(15, 300, 1700, 75)
fifteentofourtyh <- lessthanfourtyh - lessthanfifteenh + fifteenh
fifteentofourtyh

# a) iii)
x <- seq(0, 75, by = 1)
y <- dhyper(x, 300, 1700, 75)
plot(x, y, type="p", xlab="X", ylab="f(x = X)", col=4, 
     main="Pf of a Hypergeometric (N = 2000, r = 300, n = 75)",
     lwd=2)

# a) iv)
library(distr)
X <- Hyper(m=300, n=1700, k=75)
plot(X, to.draw.arg = "p", xlab="X", ylab="f(x <= X)")

#a) v)
twentyfive <- qhyper(0.25, 300, 1700, 75)
fifty <- qhyper(0.50, 300, 1700, 75)
seventyfive <- qhyper(0.75, 300, 1700, 75)
print(twentyfive)
print(fifty)
print(seventyfive)


