# def fibonacci(length)
#   if length == 0 
#     return []
#   elsif length == 1
#     return [1]
#   end
  
#   seq = [1, 1]
#   while seq.length < length 
#     last_ele = seq[-1]
#     second_to_last = seq[-2]
#     next_ele = last_ele + second_to_last
#     seq << next_ele 
#   end
  
#   return seq
# end

# p fibonacci(0) # => []
# puts
# p fibonacci(1) # => [1]
# puts
# p fibonacci(3) 
# puts
# p fibonacci(6) # => [1, 1, 2, 3, 5, 8]
# puts
# p fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
# puts
# p fibonacci(9) # => [1, 1, 2, 3, 5, 8, 13, 21]
# puts


def fibonacci(n)
  if n == 0 
    return 0
  elsif n == 1
    return 1
  end
  
  seq = [0, 1]
  while seq.length <= n 
    last_ele = seq[-1]
    second_to_last = seq[-2]
    next_ele = last_ele + second_to_last
    seq << next_ele 
  end
  
  return seq.last
end


p fibonacci(0) # => 0
puts
p fibonacci(1) # => 1
puts
p fibonacci(2) # => 1
puts
p fibonacci(3) # => 2
puts
p fibonacci(4) # => 3
puts
p fibonacci(5) # => 5
puts
p fibonacci(6) # => 8
puts
p fibonacci(7) # => 13
puts
p fibonacci(8) # => 21
puts
p fibonacci(9) # => 34
puts
p fibonacci(10) # => 55

