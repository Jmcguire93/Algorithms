# Frequent Letters

# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  frequents = [] 
  count = Hash.new(0)

  string.each_char { |char| count[char] += 1 }
  count.each do |char, num| 
    if num > 2  
      frequents << char 
    end
  end

  frequents 
end

p frequent_letters('mississippi') #=> ["i", "s"]
puts
p frequent_letters('bootcamp') #=> []
puts