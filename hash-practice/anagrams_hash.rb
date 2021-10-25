# Given two strings, return true if they are anagrams of each other, and false if they are not. 
# An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: "silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

=begin
build method skeleton
build a counter hash for a method that takes in 2 strings 
iterate through each character of the strings 
hash key value pairs should look like --> {"s" => number of times in string}  
compare hash k, v's  to eachother == or !=
return hash1 == hash2
=end



def count_chars(string)
  count = Hash.new(0)
  
  string.each_char do |char|
    count[char] += 1
  end
  
  count 
end

def anagrams(string1, string2)
  return count_chars(string1) == count_chars(string2)
end

p anagrams("silent", "listen")
p anagrams("noisy", "listen")