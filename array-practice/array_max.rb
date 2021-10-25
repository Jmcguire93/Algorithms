# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

def max_number(array)
  max = 0

  array.each do |num|
    if num > max 
      max = num 
    end
  end

  max 
end

p max_number([5, 17, -4, 20, 12])