# Euler Project problem 6 by T. Ruzmetov 04/13/2017

# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

nmax <- 1000
nums <- seq(nmax)

summa <- nmax*(1 + nmax) / 2
sum_sq <- summa * summa
sq_sum <- t(nums) %*% nums
result <- sum_sq - sq_sum

result[1]