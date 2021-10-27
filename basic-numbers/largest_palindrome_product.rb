# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(num1, num2)
  largest = 0

  (num1..num2).each do |x|     
    (num1..num2).each do |y|
      product = x * y 
      if palindrome?(product) && product > largest
        largest = product
      end
    end
  end

  largest 
end

def palindrome?(num)
  num.to_s.reverse == num.to_s
end

p largest_palindrome_product(10, 99)    # => 9009
p largest_palindrome_product(100, 999)  # => 906609