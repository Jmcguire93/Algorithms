# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {"a” => 1, "b” => 2, "c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

=begin
define a method that takes in a hash
create a new empty array
iterate through the given input hash, iterate over each key value pair 
shovel each key and value into the new empty array
return the new array
call on the method with the input hash 
=end


def flatten_hash(hash)
  new_arr = []

  hash.each do |k, v|
    new_arr << k 
    new_arr << v  
  end

  new_arr 
end

p flatten_hash({"a" => 1, "b" => 2, "c" => 3, "d" => 4})