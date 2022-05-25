# Write a method compress that accepts a string as an argument. 
# The method should return a "compressed" version of the string where streaks of consecutive letters are translated to a single appearance of the letter followed by the number of times it appears in the streak. 
# If a letter does not form a streak (meaning that it appears alone), then do not add a number after it.

def compress(str)
  compressed = ""
  letters = ("a".."z").to_a
  i = 0
  while i < str.length 
    char = str[i]
    count = 1 
    i += 1
    while char == str[i]
      count += 1
      i += 1
    end
    if count > 1 
      compressed += char + count.to_s
    else
      compressed += char 
    end
  end
  compressed 
end

p compress('aabbbbc')   # "a2b4c"
p compress('boot')      # "bo2t"
p compress('xxxyxxzzzz')# "x3yx2z4"