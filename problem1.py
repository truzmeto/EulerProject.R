# Project Euler problem 1
# Copyright (c) Project truzmeto. All rights reserved.
#
# https://github.com/truzmeto/... 
# 
##====================== Multiples of 3 and 5 ===============================
# 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all
# the multiples of 3 or 5 below 1000.

import numpy as np
size = 1000

x = np.arange(1,size)
sorted_x = x[(x%3 == 0) | (x%5 == 0)]
print(sorted_x.sum())
