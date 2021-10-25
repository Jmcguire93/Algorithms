# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

=begin   
build a method that takes in a hash 
build a new hash variable setting it equal to an empty hash  ---> new_hash = {} 
iterate over the input hash to get access to each k, v pair 
assign the new_hash k, v's switched 
return that new hash 
call on the method with the correct hash argument
=end 

def switched_keys_and_value(hash)
  new_hash = {} 

  hash.each { |k, v| new_hash[v] = k }
  new_hash 
end

p switched_keys_and_value({"a" => 1, "b" => 2, "c" => 3})




def switched_keys_and_value(hash)
  new_hash = {} 

  hash.each { |k, v| new_hash[v] = k.to_s }
  new_hash 
end

p switched_keys_and_value({a: 1, b: 2, c: 3})