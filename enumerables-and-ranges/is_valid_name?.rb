# Is Valid Name
# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name?(string)
  parts = string.split(" ")
  
  if parts.length < 2 
    return false 
  end 

  parts.each do |part| 
    if part[0] == part[0].upcase && part[1..-1] == part[1..-1].downcase 
      return true
    else 
      return false 
    end
  end
end

p is_valid_name?("Kush Patel")       # => true
p is_valid_name?("Daniel")           # => false
p is_valid_name?("Robert Downey Jr") # => true
p is_valid_name?("ROBERT DOWNEY JR") # => false


def is_valid_name?(string)
  parts = string.split(" ")
  
  if parts.length < 2 
    return false 
  end 

  parts.each do |part| 
    if !is_capitalized(part)
      return false 
    end
  end
  return true 
end

def is_capitalized(part)
  if part[0] == part[0].upcase && part[1..-1] == part[1..-1].downcase 
    return true 
  else 
    return false 
  end
end

p is_valid_name?("Kush Patel")       # => true
p is_valid_name?("Daniel")           # => false
p is_valid_name?("Robert Downey Jr") # => true
p is_valid_name?("ROBERT DOWNEY JR") # => false

