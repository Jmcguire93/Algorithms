# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5] 
# Output: [5, 4, 3, 2, 1]

=begin   
set up a function that takes in an array 
iterate starting at the last index of the array
shovel in element at each iteration in reverse order into a new array
then return the new array which will be in reverse order 
=end

## REVERSE ARRAY

# While Loop

def reverse_array(array)
  new_arr = []
  i = array.length - 1

  while i >= 0 
    new_arr << array[i] 
    i -= 1
  end

  new_arr 
end

p reverse_array([1, 2, 3, 4, 5])   #=> [5, 4, 3, 2, 1]


## Each Loop

def reverse_array(array)
  new_arr = []
  
  array.reverse_each do |num|
    new_arr << num 
  end

  new_arr 
end

p reverse_array([1, 2, 3, 4, 5])  


## Built-in Method

def reverse_array(array)
  array.reverse 
end

p reverse_array([1, 2, 3, 4, 5])
