# # Given a string of words, write a function that returns a new string that contains the words in reverse order.

# # Input: “popcorn is so cool isn’t it yeah i thought so”
# # Output: “so thought i yeah it isn’t cool so is popcorn”

def reverse_words(string)
  words = string.split(" ")
  new_arr = []

  words.reverse_each do |word|
    new_arr << word 
  end

  new_arr.join(" ")
end

p reverse_words("popcorn is so cool isn’t it yeah i thought so") # => “so thought i yeah it isn’t cool so is popcorn”



def reverse_words(string)
  words = string.split(" ")
  new_arr = []
  i = words.length - 1

  while i >= 0
    new_arr << words[i]
    i -= 1
  end

  new_arr.join(" ")
end

p reverse_words("popcorn is so cool isn’t it yeah i thought so") # => “so thought i yeah it isn’t cool so is popcorn”

