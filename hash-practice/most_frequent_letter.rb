# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

def most_frequent_letter(string)
  count = Hash.new(0)
  words = string.split("")


  words.each { |word| count[word] = count_letters(word) }
  sorted = count.sort_by { |_k, v| v }
  return sorted[-1][0]
end

def count_letters(word)
  counts = 0

  word.each_char do |char|
    if char == "p"
      counts += 1
    end
  end
  counts
end

p most_frequent_letter("peter piper picked a peck of pickled peppers")  

def most_frequent_letter(string)
  count = Hash.new(0)

  string.each_char { |char| count[char] += 1 }
  sorted = count.sort_by { |k, v| count[k] = v }
  
  return sorted[-1][0]
end

p most_frequent_letter("peter piper picked a peck of pickled peppers")  
p most_frequent_letter("peter pipeeeeeeeeeeeeeeeeeer picked a peck of pickled peppers")  
