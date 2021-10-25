# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def doubled_values(array)
  new_arr = []

  array.each do |num|
    new_arr << num * 2
  end

  new_arr 
end

p doubled_values([4, 2, 5, 99, -4])