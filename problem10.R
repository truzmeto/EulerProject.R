# Euler Project problem 10 by T. Ruzmetov 04/18/2017

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# function to determine if prime or not
is_prime <- function(num) {
  if (num == 2 | num == 3) {
    TRUE
  } else if (any(num %% 3:floor(sqrt(num)) == 0)) {
    FALSE
  } else { 
    TRUE
  }
}

limit <- 2000000
odds <- seq(3,limit,2)
primes <- odds[sapply(odds,is_prime)]
result <- sum(primes) + 2
result
#142913828922

