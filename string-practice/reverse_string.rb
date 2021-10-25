# Write a function that returns the reverse of a given string.

# Input: “abcde”
# Output: “edcba”

def reverse_str(string)
  i = string.length - 1
  reversed = "" 

  while i >= 0
    reversed += string[i]
    i -= 1
  end

  reversed 
end

p reverse_str("abcde")

def reverse_str(string)
  new_arr = []
  letters = string.split("")

  letters.reverse_each do |char|
    new_arr << char 
  end

  new_arr.join("")
end

p reverse_str("abcde")





