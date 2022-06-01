# Write a method, composite?, that takes in a number and returns a boolean indicating if the number has factors besides 1 and itself

def composite?(num)
  (2...num).each do |i|
    return true if num % i == 0
  end

  false
end

p composite?(9)     # => true
p composite?(13)    # => false