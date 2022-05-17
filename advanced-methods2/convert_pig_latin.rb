# Write a method convert_pig_latin that accepts a sentence as an argument. 
# The method should translate the sentence according to the following rules:

# words that are shorter than 3 characters are unchanged
# words that are 3 characters or longer are translated according to the following rules:
# if the word begins with a vowel, simply add 'yay' to the end of the word (example: 'eat'->'eatyay')
# if the word begins with a non-vowel, move all letters that come before the word's first vowel to the end of the word and add 'ay' (example: 'trash'->'ashtray')
# Note that if words are capitalized in the original sentence, they should remain capitalized in the translated sentence. Vowels are the letters a, e, i, o, u.

def convert_pig_latin(sentence)
  words = sentence.split(" ")
  new_words = words.map do |word|
    new_word = word.length > 2 ? convert_word(word) : word 
    word == word.capitalize ? new_word.capitalize : new_word 
  end
  new_words.join(" ")
end

def convert_word(word)
  vowels = "AEIOUaeiou"
  return word + "yay" if vowels.include?(word[0])
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1] + word[0...i] + "ay"
    end
  end
end


p convert_pig_latin('We like to eat bananas') # "We ikelay to eatyay ananasbay"
p convert_pig_latin('I cannot find the trash') # "I annotcay indfay ethay ashtray"
p convert_pig_latin('What an interesting problem') # "Atwhay an interestingyay oblempray"
p convert_pig_latin('Her family flew to France') # "Erhay amilyfay ewflay to Ancefray"
p convert_pig_latin('Our family flew to France') # "Ouryay amilyfay ewflay to Ancefray"