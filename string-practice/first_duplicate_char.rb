# Given a string, write a function that returns the first occurence of two duplicate characters in a row, 
# and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

def duplicate_char(string)
  i = 0

  while i < string.length 
    if string[i] == string[i + 1]
      return string[i]
    end
    i += 1
  end
  string 
end

p duplicate_char("abcdefghhijkkloooop")


def duplicate_char(string)
  new_arr = []
  dups = Hash.new(0)

  string.each_char do |char|
    dups[char] += 1
  end 

  dups.each do |char, i|
    if i >= 2
      new_arr << char 
    end
  end
  new_arr.first 
end

p duplicate_char("abcdefghhijkkloooop")

