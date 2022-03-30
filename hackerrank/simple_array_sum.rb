# Simple Array Sum

# Given an array of integers, find the sum of its elements.

def simple_array_sum(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum 
end

p simple_array_sum([1, 2, 3]) #=> 6
p simple_array_sum([1, 2, 3, 4, 10, 11]) #=> 31