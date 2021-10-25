# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def less_than_hundred(array)
  new_arr = []

  array.each do |num|
    if num < 100
      new_arr << num 
    end
  end

  new_arr 
end

p less_than_hundred([99, 101, 88, 4, 2000, 50])


def less_than_hundred(array)
  new_arr = []
  i = 0

  while i < array.length 
    if array[i] < 100
      new_arr << array[i]
    end
    i += 1
  end

  new_arr 
end

p less_than_hundred([99, 101, 88, 4, 2000, 50])