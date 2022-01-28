# Ae Count
# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. 
# Assume the string contains only lowercase characters.

def ae_count(string)
  count = {"a"=>0, "e"=>0}

  string.each_char do |char|
    if char == "a" || char == "e"
      count[char] += 1 
    end
  end 
  count 
end

p ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
p ae_count("keyboard") #=> {"a"=>1, "e"=>1}

###

def ae_count(string)
  count = Hash.new(0)               ## Still solves ae_count, but terminal output order is different

  string.each_char do |char|
    if char == "a" || char == "e"
      count[char] += 1 
    end
  end 
  count 
end

p ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
p ae_count("keyboard") #=> {"a"=>1, "e"=>1}