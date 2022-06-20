# Write a method bi_prime?(num) that accepts a number as an arg and returns a boolean indicating whether or not the number is a bi-prime. 
# A bi-prime is a positive integer that can be obtained by multiplying two prime numbers.

# Examples 
# 14 is a bi-prime because 2 * 7
# 22 is a bi-prime because 2 * 11
# 25 is a bi-prime because 5 * 5
# 24 is not a bi-prime because no two prime numbers have a product of 24

def bi_prime?(num)
  prime_facts = prime_factors(num) 

  prime_facts.any? do |a| 
    b = num / a * 1.0 
    prime_facts.include?(b)
  end
end

def is_prime?(num)
  return false if num < 2 
  (2...num).none? { |i| num % i == 0 }
end

def prime_factors(num)
  (2...num).select { |i| num % i == 0 && is_prime?(i) }
end

p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false