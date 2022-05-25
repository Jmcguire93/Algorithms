# Write a method, sum_array(array), that takes in an array of numbers.
# The method should return the total sum of the elements.
# 
# Solve this recursively!
#
# Examples:

def sum_array(array)
  return 0 if array.empty?
  first = array[0]
  rest = array[1..-1]
  first + sum_array(rest)
end

p sum_array([])             # => 0
p sum_array([5])            # => 5
p sum_array([5, 2])         # => 7
p sum_array([4, 10, -1, 2]) # => 15