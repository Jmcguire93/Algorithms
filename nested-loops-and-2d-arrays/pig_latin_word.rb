# Pig Latin Word

# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"

  if vowels.include?(word[0])
    return word + "yay"
  end

  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      before_vowel = word[0...i]
      after_vowel = word[i..-1]
      return after_vowel + before_vowel + "ay"
    end
  end
end

p pig_latin_word("apple")   # => "appleyay"
p pig_latin_word("eat")     # => "eatyay"
p pig_latin_word("banana")  # => "ananabay"
p pig_latin_word("trash")   # => "ashtray"