# Write a function that returns whether a given number is a prime number.

# A prime number is any whole number greater than 1 that is divisible only by 1 and itself.

# Each Loop 

def is_prime?(num)
  if num < 2
    return false 
  end

  (2...num).each do |divisor|       
    if num % divisor == 0          
      return false 
    end
  end

  true 
end

p is_prime?(0)  #=> false
p is_prime?(1)  #=> false 
p is_prime?(2)  #=> true
p is_prime?(3)  #=> true
p is_prime?(4)  #=> false
p is_prime?(5)  #=> true 
p is_prime?(6)  #=> false 
p is_prime?(7)  #=> true 


# require 'prime'
# num1 = 2
# num2 = 4
# p num1.prime?
# p num2.prime?



# Is 7 prime? YES, it IS only divisible by 1 and itself (7). We checked if it was divisible by anything from 2 through 6. All we need is to find atleast ONE of these numbers (2, 3, 4, 5, 6) to evenly divide 7, which we DO NOT. 

# Is 4 prime? NO, it is NOT only divisible by 1 and itself (4). We checked if it was divisible by anything from 2 through 3. All we need is to find atleast ONE of these numbers (2, 3) to evenly divide 4, which we DO. (4 / 2 = 2.0)

# Is 1 prime? NO, it is NOT greater than 1. 

# While Loop

def is_prime?(num)
  if num < 2
    return false 
  end
  
  n = 2

  while n < num
    return false if num % n == 0
    n += 1
  end

  true
end

p is_prime?(0)  #=> false
p is_prime?(1)  #=> false 
p is_prime?(2)  #=> true
p is_prime?(3)  #=> true
p is_prime?(4)  #=> false
p is_prime?(5)  #=> true 
p is_prime?(6)  #=> false 
p is_prime?(7)  #=> true 