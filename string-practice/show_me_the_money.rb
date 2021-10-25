# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

# def show_me_the_money(string)
#   string.include?("$")
# end

# p show_me_the_money("i hate $ but i love money i know i know im crazy")
# p show_me_the_money("iabcdefghijklmnopqrstuvwxyz")


# def show_me_the_money(string)
  
#   string.each_char do |char|
#     if char == "$"
#       return true 
#     end
#   end
#   false 
# end

# p show_me_the_money("i hate $ but i love money i know i know im crazy")
# p show_me_the_money("iabcdefghijklmnopqrstuvwxyz")


# def show_me_the_money(string)
#   i = 0 

#   while i < string.length 
#     if string[i] == "$"
#       return true 
#     end
#     i += 1
#   end
#   false
# end

# p show_me_the_money("i hate $ but i love money i know i know im crazy")
# p show_me_the_money("iabcdefghijklmnopqrstuvwxyz")




# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false


def show_me_the_money(string)
  
  string.each_char do |char|
    if char == "$"
      return true 
    end
  end

  false 
end

p show_me_the_money("i hate $ but i love money i know i know im crazy")
p show_me_the_money("iabcdefghijklmnopqrstuvwxyz")