# Is Valid Email
# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email?(string)
  parts = string.split("@")

  if parts.length != 2
    return false 
  end

  first_part = parts[0]
  second_part = parts[1]
  alpha = "abcdefghijklmnopqrstuvwxyz"

  first_part.each_char do |char|
    if !alpha.include?(char)
      return false
    end
  end

  if second_part.split(".").length == 2 
    return true 
  else 
    return false 
  end
end

p is_valid_email?("abc@xy.z")         # => true
p is_valid_email?("jdoe@gmail.com")   # => true
p is_valid_email?("jdoe@g@mail.com")  # => false
p is_valid_email?("jdoe42@gmail.com") # => false
p is_valid_email?("jdoegmail.com")    # => false
p is_valid_email?("az@email")         # => false


