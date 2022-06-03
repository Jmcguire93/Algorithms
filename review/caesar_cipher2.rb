# Write a method, String#caesar_cipher, that takes in an a number.
# The method should return a new string where each char of the original string is shifted the given number of times in the alphabet.

class String
  def caesar_cipher(num)
    alphabet = ("a".."z").to_a
    new_str = ""
    
    self.each_char do |char|
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx % 26]
      new_str += new_char
    end
    
    return new_str
  end
end

p "apple".caesar_cipher(1)    #=> "bqqmf"
p "bootcamp".caesar_cipher(2) #=> "dqqvecor"
p "zebra".caesar_cipher(4)    #=> "difve"