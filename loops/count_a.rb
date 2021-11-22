# Count A
# Write a method count_a(word) that takes in a string word and returns the number of a's in the word. 
# The method should count both lowercase (a) and uppercase (A).

#Each Loops

def count_a(word)
  count = 0

  word.each_char do |char|
    if char == "a" || char == "A"
      count += 1
    end
  end
  count 
end

p count_a("application")  # => 2
p count_a("bike")         # => 0
p count_a("Arthur")       # => 1
p count_a("Aardvark")     # => 3