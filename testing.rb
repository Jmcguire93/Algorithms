# class Integer
#   def ordinalize
#     case self%10
#     when 1
#       return "#{self}st"
#     when 2
#       return "#{self}nd"
#     when 3
#       return "#{self}rd"
#     else
#       return "#{self}th"
#     end
#   end
# end


# p 22.ordinalize #=> "22nd"
# p 1.ordinalize

# def ordinalize(n)
#   return "#{n}th" if (11..13).include?(n % 100)

#   case n%10
#   when 1; "#{n}st"
#   when 2; "#{n}nd"
#   when 3; "#{n}rd"
#   else    "#{n}th"
#   end
# end

# p 22.ordinalize #=> "22nd"
# p 1.ordinalize


# def duplicate_elements?(array)
#   count = Hash.new(0)

#   array.each { |num| count[num] += 1 }
#   if count.keys.length < array.length 
#     return true 
#   end
#   false 
# end

# p duplicate_elements?([1, 2, 3, 5, 7, 8])  #=> false
# p duplicate_elements?([1, 3, 5, 6, 1])     #=> true
# p duplicate_elements?([1, 2])              #=> false


# def duplicate_elements?(array)
#   hash = {}

#   array.each do |num|
#     if hash[num]
#       return true 
#     else
#       hash[num] = true 
#     end
#   end
#   false 
# end

# p duplicate_elements?([1, 2, 3, 5, 7, 8])  #=> false
# p duplicate_elements?([1, 3, 5, 6, 1])     #=> true
# p duplicate_elements?([1, 2])              #=> false


# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each 
# food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

=begin   
build method 
takes in a hash 

set sum = 0
iterate through hash using each loop 
grab each value and add it to the sum 
then return the sum 
call method and return 14
=end

# def sum_menu(hash)
#   sum = 0

#   hash.each do |k, v|
#     sum += v 
#   end 

#   sum 
# end

# p sum_menu({"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2})


# def anagrams?(string1, string2)
#   count_char(string1) == count_char(string2)
# end

# def count_char(string)
#   count = Hash.new(0)

#   string.each_char do |char|
#     count[char] += 1
#   end

#   count
# end

# p anagrams?("silent", "listen")   #=> true
# p anagrams?("frog", "bear")       #=> false 






# Input: ["m", "e", "g", "h", "o", "w", "e"]

# Output 1: {"m" => 100, "e" => 100, "g" => 100, "h" => 100, "o" => 100, "w" => 100, "e" => 100 }

# Output 2: {"m" => 1, "e" => 2, "g" => 1, "h" => 1, "o" => 1, "w" => 1}

# def build_hash(arr)
#   new_hash = {}

#   arr.each do |char|
#     new_hash[char] = 100
#   end

#   new_hash 
# end

# p build_hash(["m", "e", "g", "h", "o", "w", "e"])  # => {"m" => 100, "e" => 100, "g" => 100, "h" => 100, "o" => 100, "w" => 100, "e" => 100 }


# def counter_hash(arr)
#   count_hash = {}(0)

#   arr.each do |char|
#     count_hash[char] += 1
#   end

#   count_hash 
# end

# p counter_hash(["m", "e", "g", "h", "o", "w", "e", "e"])  # => {"m" => 1, "e" => 2, "g" => 1, "h" => 1, "o" => 1, "w" => 1}


# def range1(num1, num2)
#   new_arr = []
#   num1.upto(num2).each do |num|
#     new_arr << num
#   end
#   new_arr 
# end

# p range1(1, 10)

# puts "-----"

# def range1(num1, num2)
#   new_arr = []
#   num2.downto(num1).each do |num|
#     new_arr << num
#   end
#   new_arr 
# end

# p range1(1, 10)