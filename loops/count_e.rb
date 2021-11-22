# Count E
# Write a method count_e(word) that takes in a string word and returns the number of e's in the word.

#Each Loop

def count_e(string)
  count = 0 

  string.each_char do |char|
    if char == "e"
      count += 1
    end
  end

  count 
end

p count_e("movie")      # 1
p count_e("excellent")  # 3
p count_e("incredible") # 2

#While Loop

def count_e(string)
  count = 0 
  i = 0

  while i < string.length 
    char = string[i]
    if char == "e"
      count += 1
    end
    i += 1
  end
  count 
end

p count_e("movie")      # 1
p count_e("excellent")  # 3
p count_e("incredible") # 2