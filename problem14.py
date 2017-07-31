# ## Longest Collatz sequence
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
 
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting
# numbers finish at 1.
 
# Which starting number, under one million, produces the longest chain?
 
# NOTE: Once the chain starts the terms are allowed to go above one million.

## Optimized solution
from timeit import default_timer as timer
start = timer() # starting time count

size = 1000000
cached_val = {1: 1} # initializing dictionary for caching

# writing recursive function to calculate chain length for each unique input
def sum_collats_seq(x):
       
    if x not in cached_val: # do only if not cached
        
        if x%2 == 0:         
            y = x / 2
        else:
            y = 3*x + 1
        cached_val[x] = sum_collats_seq(y) + 1  # Collect recursivaly
                                                # untill reach known func.value    
    return cached_val[x]                        

input_arr = list(range(1,size))
result = max(list(map(sum_collats_seq, input_arr)))
which_num = list(map(sum_collats_seq,input_arr)).index(525) + 1
print(which_num)

end = timer()
print(end - start,"s")
