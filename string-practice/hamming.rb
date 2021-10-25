# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. 
#              Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0


def hamming(string1, string2)
  new_arr = []
  hash = {}

  string1.each_char { |char| new_arr << char }
  string2.each_char { |char2| new_arr << char2 }
  new_arr.each { |ele| hash[ele] = true }
  
  hash.keys.count - string1.length 
end

p hamming("ABCDEFG", "ABCXEOG")     # => 2
p hamming("ABCDEFG", "ABCDEFG")     # => 0


def hamming(string1, string2)
  count = 0 

  string1.each_char do |char|
    if string1.include?(char) && !string2.include?(char)
      count += 1
    end
  end
  count 
end

p hamming("ABCDEFG", "ABCXEOG")     # => 2
p hamming("ABCDEFG", "ABCDEFG")     # => 0


def hamming(string1, string2)
  count = 0
  index = 0

  while index < string1.length
    if string1[index] != string2[index]
      count += 1
    end
    index += 1
  end
  return count
end

p hamming("ABCDEFG", "ABCXEOG") #2
p hamming("ABCDEFG", "ABCDEFG") #0



