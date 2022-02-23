# Most Vowels
# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  count = {}
  words = sentence.split(" ")
  
  words.each { |word| count[word] = count_vowels(word) }
  sorted = count.sort_by { |k, v| v }
  return sorted[-1][0]
end

def count_vowels(word)
  counts = 0
  vowels = "aeiou"
  
  word.each_char do |char|
    if vowels.include?(char)
      counts += 1
    end
  end
  
  return counts
end

p most_vowels("what a wonderful life") #=> "wonderful"