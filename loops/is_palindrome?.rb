# Is Palindrome
# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. 
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome?(word)
  reversed = ""
  i = word.length - 1

  while i >= 0
    reversed += word[i]
    i -= 1
  end
  reversed == word 
end

p is_palindrome?("racecar")  # => true
p is_palindrome?("kayak")    # => true
p is_palindrome?("bootcamp") # => false