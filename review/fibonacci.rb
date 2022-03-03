# Fibonacci

# The fibonacci sequence is a sequence of numbers whose first and second elements are 1. 
# To generate further elements of the sequence we take the sum of the previous two elements. 
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. 
# Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
  if length == 0 
    return []
  elsif length == 1
    return [1]
  end
  
  seq = [0, 1]
  while seq.length < length 
    last_ele = seq[-1]
    second_to_last = seq[-2]
    next_ele = last_ele + second_to_last
    seq << next_ele 
  end
  
  return seq
end

p fibonacci(0) # => []
puts
p fibonacci(1) # => [1]
puts
p fibonacci(2) # => [0, 1]
puts
p fibonacci(3) # => [0, 1, 1]
puts
p fibonacci(4) # => [0, 1, 1, 2]
puts
p fibonacci(5) # => [0, 1, 1, 2]
puts
p fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
p fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
p fibonacci(9) # => [1, 1, 2, 3, 5, 8, 13, 21, 34]
puts
p fibonacci(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
puts