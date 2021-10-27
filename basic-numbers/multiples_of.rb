# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


## Each Loop

def mulitples_of(num)
  sum = 0

  (1...num).each do |multiple|
    if (multiple % 3 == 0) || (multiple % 5 == 0)
      sum += multiple
    end
  end

  sum
end

p mulitples_of(10)    # => 23
p mulitples_of(1000)  # => 233168


puts "-------"

## While Loop

def multiples_of(num)
  sum = 0
  index = 0
  
  while index < num 
    if (index % 3 == 0) || (index % 5 == 0)
      sum += index
    end 
    index += 1
  end  

  sum
end 

p mulitples_of(10)    # => 23
p mulitples_of(1000)  # => 233168