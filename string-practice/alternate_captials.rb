# Given a string, write a function that returns a copy of the original string that has every other character capitalized. 
# (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

def alternate_capitals(string)
  i = 1

  while i < string.length 
    string[i] = string[i].upcase 
    i += 2
  end
  string
end

p alternate_capitals("hello, how are your porcupines today?")
p alternate_capitals("hello, how are your porcupines today?aa")