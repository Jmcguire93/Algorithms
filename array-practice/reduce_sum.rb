# Write a function that returns the sum of all numbers in a given array.

# NOTE: Do not use any built-in language functions that do this automatically for you.

# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10

=begin   
setup method definition
each loop to iterate through the array
variable sum = 0 to keep track of the current total and add the element at each iteration to it 
return sum 
=end

def sum_array(array)
  sum = 0

  array.each do |num|
    sum += num      
  end 

  sum 
end

p sum_array([1, 2, 3, 4])