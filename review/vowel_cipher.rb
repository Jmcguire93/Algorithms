# Vowel Cipher
# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.


def vowel_cipher(string)
  vowels = "aeiou"
  new_chars = string.split("").map do |char|
    if vowels.include?(char)
      old_idx = vowels.index(char)
      new_idx = (old_idx + 1) % vowels.length
      vowels[new_idx]
    else
      char
    end
  end
  
  return new_chars.join("")
end

p vowel_cipher("bootcamp") #=> buutcemp
p vowel_cipher("paper cup") #=> pepir cap