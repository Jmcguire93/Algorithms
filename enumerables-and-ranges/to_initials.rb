# To Initials
# Write a method to_initials that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
  words = name.split(" ")
  initials = ""

  words.each { |word| initials += word[0] }

  initials 
end

p to_initials("Kelvin Bridges")      # => "KB"
p to_initials("Michaela Yamamoto")   # => "MY"
p to_initials("Mary La Grange")      # => "MLG"