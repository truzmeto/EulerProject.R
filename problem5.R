
# Euler Project problem 5 by T. Ruzmetov 04/13/2017

# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder. What is the smallest positive number
# that is evenly divisible by all of the numbers from 1 to 20?


# function to determine if prime or not
is_prime <- function(num) {
    if (num == 2) {
        TRUE
    } else if (any(num %% 2:(num-1) == 0)) {
        FALSE
    } else { 
        TRUE
    }
}

## generate all primes under kmax
kmax <- 20  
p <- which(sapply(1:kmax, FUN = is_prime))

## generate powers for primes then calculate result
b <- 1
limit <- sqrt(kmax)
result <- 1
for (i in 1:length(p)) {
    b[i] <- 1
    if(p[i] < limit) {
        b[i] <- floor( log(kmax) / log(p[i]) )
    } 
    result <- result * p[i]^b[i]
}

cat("The smallest positive number that is evenly divisible by all of the
    numbers from 1 to", kmax, "is", result)

