# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:

def all_vowel_pairs(words)
  vowels = "aeiou".split("")
  pairs = []

  (0...words.length).each do |idx1|
    (idx1 + 1...words.length).each do |idx2|
      combined = words[idx1] + " " + words[idx2]
      pairs << combined if vowels.all? { |vowel| combined.include?(vowel) }
    end
  end

  pairs
end

p all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]