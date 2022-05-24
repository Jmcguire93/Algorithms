# Write a method silly_talk that accepts a sentence as an argument. 
# The method should translate each word of the sentence according to the following rules:

# if the word ends with a vowel, simply repeat that vowel at the end of the word (example: 'code'->'codee')
# if the word ends with a non-vowel, every vowel of the word should be followed by 'b' and that same vowel (example: 'siren'->'sibireben')
# Note that if words are capitalized in the original sentence, they should remain capitalized in the translated sentence. Vowels are the letters a, e, i, o, u.

def silly_talk(sentence)
  words = sentence.split(" ")
  new_words = words.map do |word|
    new_word = transcribe_word(word)
    word == word.capitalize ? new_word.capitalize : new_word 
  end
  new_words.join(" ")
end

def transcribe_word(word)
  vowels = "AEIOUaeiou"
  return word + word[-1] if vowels.include?(word[-1])
  new_word = ""
  
  word.each_char do |char|
    if vowels.include?(char)
      new_word += char + "b" + char 
    else 
      new_word += char
    end
  end
  new_word 
end

p silly_talk('Kids like cats and dogs') # "Kibids likee cabats aband dobogs"
p silly_talk('Stop that scooter') # "Stobop thabat scobooboteber"
p silly_talk('They can code') # "Thebey caban codee"
p silly_talk('He flew to Italy') # "Hee flebew too Ibitabaly"