# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


# function checks if number is palindrome
is_palindrome <- function(num) {
    x <- as.character(num)

    # note, u can compare forward and inverse
    # numbers by each digit or in a combined for
    # both works, but which one is optimum?
        
    #split the given number into digits
    splitted <- as.numeric(unlist(strsplit(x, "")))
    
    #now get inverse of the number
    inverse_n <- as.numeric(paste(rev(splitted), collapse = "")) 
    
    # here return True if polindrome or vise versa 
    if (num == inverse_n){
        TRUE
    }   else { 
        FALSE   
    }
}
    
## calculate the all pairwise products 900:999 
## we assume that largest polindrome we are looking for is
## a product of 3 digit num between 900 and 999
## then we get all pairwise products by matrix multiplication, which is very fast!
#mat <- matrix(900:999, nrow = 1)
#mat <- t(mat) %*% (mat)



## calculate the all pairwise products 900:999 
## we assume that largest polindrome we are looking for is
## a product of 3 digit num between 900 and 999
## then we get all pairwise products by vector multiplication, which is very fast and
## outputs matrix!
vec <- sequence(100) + 899
product <- vec %*% t(vec)

## converting final product matrix back to vector
vec <- as.vector(product)

## sorting it in deacreasing order for efficient search od max palindrom
vec <- unique(sort(vec, decreasing = T))

# pick the largest palindrome
pali_max <- 0
i <- 1
n <- length(vec)
while (i <= n) {
  if (is_palindrome(vec[i])) {
    pali_max <- vec[i]
    break
  }
  i <- i + 1
}

cat("The largest palindrom is", pali_max)

