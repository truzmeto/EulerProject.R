

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13. What is the 10001st prime number?

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


nth_prime <- 10001
limit <- nth_prime * 100

odds <- seq(3,limit,2)
count <- 1
for (i in odds) {
    if ( is_prime(i) == TRUE) {
        count <- count + 1
        prime <- i
    } 
    
    if ( count == nth_prime){
        break
    }
}

cat("10001th prime is", prime)

