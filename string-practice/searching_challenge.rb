# Find the first not repeated character in the string.

# def searching_challenge(str)
#   str.each_char do |char|
#     return char if str.count(char) == 1 
#   end
# end

# p searching_challenge("abcdef") #=> a
# p searching_challenge("hello world hi hey") #=> w

# puts " ---- "

# def searching_challenge(str)
#   str.chars.find { |character| str.count(character) == 1 }
# end

# p searching_challenge("abcdef") #=> a
# p searching_challenge("hello world hi hey") #=> w



def searching_challenge(str)
  token = "9hnp21qdc6"
  str.each_char { |char| return char + ":" + token.reverse if str.count(char) == 1 }
end

p searching_challenge("abcdef") #=> "a:6cdq12pnh9"
p searching_challenge("hello world hi hey") #=> "w:6cdq12pnh9"