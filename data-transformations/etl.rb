# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }


=begin   
build out method definition/skelton that takes in 2 arguements, an array, and a number 
create a new empty hash setting it to a variable called hash --->   hash = {}
iterate though the entire array
grab each element from the array and set that to be the new hashes key
set each of those key's to have a value of the given number
return the new hash 
=end




def transform_data(arr, num)
  hash = {} 

  arr.each {|char| hash[char] = num  }

  hash 
end

p transform_data(["a", "e", "i", "o", "u"], 1)