# Write a method, reverse_string(str), that takes in a string.
# The method should return the string with it's characters in reverse order.
#
# Solve this recursively!
#
# Examples:

def reverse_string(str)
  return "" if str.empty?
  reverse_string(str[1..-1]) + str[0] 
end 

p reverse_string("")            # => ""
p reverse_string("c")           # => "c"
p reverse_string("internet")    # => "tenretni"
p reverse_string("friends")     # => "sdneirf"