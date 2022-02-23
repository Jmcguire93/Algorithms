# Prime

# Write a method prime? that takes in a number and returns a boolean, indicating whether the number is prime. 
# A prime number is only divisible by 1 and itself.

def prime?(num)
  if num < 2 
    return false
  end
  
  (2...num).each do |factor|
    if num % factor == 0 
      return false 
    end
  end
  
  return true 
end

p prime?(2)  #=> true
p prime?(5)  #=> true
p prime?(11) #=> true
p prime?(4)  #=> false
p prime?(9)  #=> false
p prime?(-5) #=> false