# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

# Attempt 1

def fibonacci(n)  
  seq = [0, 1]

  while seq.length < n 
    last_ele = seq[-1]
    second_to_last = seq[-2]
    next_ele = last_ele + second_to_last
    seq << next_ele 
  end
  
  return seq.last    
end

p fibonacci(9) # => 21

puts "-------"


# Attempt 2

def fibonacci(n)
  num1, num2 = [0,1]

  (n - 1).times do 
    num1, num2 = num2, num1+num2
  end 
  
  num1
end 

p fibonacci(9) 

puts "-------"


## The sequence 

def fibonacci(n)
  if n == 0 
    return []
  elsif n == 1
    return [1]
  end
  
  seq = [0, 1]
  while seq.length < n 
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
p fibonacci(3) # => [0, 1, 1]
puts
p fibonacci(6) # => [1, 1, 2, 3, 5]
puts
p fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13]
puts
p fibonacci(9) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts