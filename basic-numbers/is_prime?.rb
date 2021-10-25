# Write a function that returns whether a given number is a prime number.

def is_prime?(num)
  if num < 2
    return false 
  end

  (2...num).each do |divisor|
    if num % divisor == 0          
      return false 
    end
  end

  return true 
end

p is_prime?(0)  #=> false
p is_prime?(1)  #=> false 
p is_prime?(2)  #=> true
p is_prime?(3)  #=> true
p is_prime?(4)  #=> false
p is_prime?(5)  #=> true 
p is_prime?(6)  #=> false 
p is_prime?(7)  #=> true 


# A prime number is any whole number greater than 1 that is divisible only by 1 and itself.


# Is 7 prime? YES, it IS only divisible by 1 and itself (7). We checked if it was divisible by anything from 2 through 6. All we need is to find atleast ONE of these numbers (2, 3, 4, 5, 6) to evenly divide 7, which we DO NOT. 

# Is 4 prime? NO, it is NOT only divisible by 1 and itself (4). We checked if it was divisible by anything from 2 through 3. All we need is to find atleast ONE of these numbers (2, 3) to evenly divide 4, which we DO. (4 / 2 = 2.0)

# Is 1 prime? NO, it is NOT greater than 1. 
