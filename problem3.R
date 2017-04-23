# Euler project problem #3

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

nmax <- 600851475143

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

result <- 0
j <- 0

for (i in 2:floor(sqrt(nmax))){
    if(nmax%%i == 0){             # check if nmax is devisable by i
        if(is_prime(i) == TRUE) { # check if prime number
            j <- j + 1            # prime indecies
            result[j] <- i        # saving primes to result[i]
        }
    }
}

max(result)
