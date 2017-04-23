# Euler Project problem 9 by T. Ruzmetov 04/17/2017

# A Pythagorean triplet is a set of three natural numbers, a < b < c,
# for which,  a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Uzing given relations such as a<b<c and a+b+c = 1000 one can figure out that
# a<1000/3, b>1000/3, c>1000/3, which can help optimize the problem. 
# then a,b,c are somewhere between 100 and 400

start.time <- Sys.time()

upper_i <- 400
lower_i <- 100
lim <- 1000

for ( a in lower_i:(upper_i-1) ) {
        for ( b in a:upper_i ) {
                c2 <- a*a + b*b     
                c <- sqrt(c2)
                if(c - floor(c) == 0) {
                        summa <- a + b + c
                        if( summa == lim) {
                                abc <- a*b*c
                                stop("Let's break out!") 
                        }
                }        
        
        }
} 

cat(a,b,c,abc)
end.time <- Sys.time()

cat("exec time is", start.time - end.time)

