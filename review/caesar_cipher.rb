# Caesar Cipher

# Write a method caesar_cipher that takes in a string and a number. 
# The method should return a new string where every character of the original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  
  new_str = "" 
  alphabet = "abcdefghijklmnopqrstuvwxyz" 
  
  str.each_char do |char|		            # "zebra".each_char do |char| # => "z"
    old_idx = alphabet.index(char)	    # old_idx = "abcdefghijklmnopqrstuvwxyz".index("z") # => 25
    new_idx = old_idx + num			        # 25 + 4 => 29
    new_char = alphabet[new_idx % 26]		#"abcdefghijklmnopqrstuvwxyz"[29] # => nil
  	 new_str += new_char
  end
  
  return new_str
end

p caesar_cipher("apple", 1)    #=> "bqqmf"
p caesar_cipher("bootcamp", 2) #=> "dqqvecor"
p caesar_cipher("zebra", 4)    #=> "difve"