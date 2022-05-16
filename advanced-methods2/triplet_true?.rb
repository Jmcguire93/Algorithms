# Write a method triplet_true? that accepts a string as an argument and returns a boolean indicating whether or not the string contains three of the same character consecutively.

def triplet_true?(str) 
  str.each_char.with_index { |_char, i| return true if str[i..i+2] == str[i] * 3 }
  false
end


p triplet_true?('caaabb')        # true
p triplet_true?('terrrrrible')   # true
p triplet_true?('runninggg')     # true
p triplet_true?('walking')       # false
p triplet_true?('e')             # false