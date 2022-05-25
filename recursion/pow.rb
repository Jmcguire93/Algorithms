# Write a method, pow(base, exponent), that takes in two numbers.
# The method should calculate the base raised to the exponent power.
# You can assume the exponent is always positive.
#
# Solve this recursively!
#
# Examples:

def pow(base, exponent)
  return 1 if exponent == 0
  base * pow(base, exponent - 1)
end

p pow(2, 0) # => 1
p pow(2, 1) # => 2
p pow(2, 5) # => 32
p pow(3, 4) # => 81
p pow(4, 3) # => 64