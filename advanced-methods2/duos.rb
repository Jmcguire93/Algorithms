# Write a method duos that accepts a string as an argument and returns the count of the number of times the same character appears consecutively in the given string.

def duos(str)
  count = 0 

  str.each_char.with_index { |_char, i| count += 1 if str[i] == str[i + 1] }
  count 
end

p duos('beep')          # 1
p duos('wxxyzz')        # 2
p duos('hoooraay')      # 3
p duos('dinosaurs')     # 0
p duos('e')             # 0