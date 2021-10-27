# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

def fizz_buzz(n)
  i = 1

  while i <= n 
    if (i % 3 == 0 && i % 5 == 0)
      puts "FizzBuzz"
    elsif (i % 3 == 0) && !(i % 5 == 0)
      puts "Fizz"
    elsif (i % 5 == 0) && !(i % 3 == 0)
      puts "Buzz"
    elsif !(i % 3 == 0 || i % 5 == 0)
      puts i    
    end

    i += 1
  end
end

puts fizz_buzz(15) 

#Expected Output:
# 1     
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz