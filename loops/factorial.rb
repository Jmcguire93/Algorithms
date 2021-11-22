# Factorial
# Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num.

# Each Loop

def factorial(num)
  product = 1

  (1..num).each do |number|
    product *= number 
  end

  product 
end

p factorial(3) # => 6, because 1 * 2 * 3 = 6
p factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120

# While Loop

def factorial(num)
  product = 1
  i = 1

  while i <= num
    product *= i 
    i += 1
  end
  product 
end

p factorial(3) # => 6, because 1 * 2 * 3 = 6
p factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120