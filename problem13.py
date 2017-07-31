# Large sum
# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
n = 10
n_digs = n + 2

# reading huge number into list stored externally
lines = open("input/problem13.inp").read().split('\n')

# extracting only first 15 digits since the rest is not sig.
f = list(map(lambda x : x[0:n_digs], lines))

# converting to int
new_nums = list(map(int, f))

result = str(sum(new_nums))
print(result[0:n])
