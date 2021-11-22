# Count Vowels
# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. 
# Vowels are the letters a, e, i, o, u.


# Each loop

def count_vowels(word)
  count = 0
  vowels = "aeiou"

  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end

  count 
end

p count_vowels("bootcamp")  # => 3
p count_vowels("apple")     # => 2
p count_vowels("pizza")     # => 2


# While Loop

def count_vowels(word)
  count = 0
  i = 0
  vowels = "aeiou"

  while i < word.length 
    char = word[i]
    if vowels.include?(char)
      count += 1
    end

    i += 1
  end
  count 
end

p count_vowels("bootcamp")  # => 3
p count_vowels("apple")     # => 2
p count_vowels("pizza")     # => 2