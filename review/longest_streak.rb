# Write a method longest_streak(str) that accepts a string as an arg. 
# The method should return the longest streak of consecutive characters in the string. 
# If there are any ties, return the streak that occurs later in the string.

def longest_streak(str)
  current_streak = ''
  best_streak = ''

  (0...str.length).each do |idx|
    if str[idx] == str[idx - 1] || idx == 0
      current_streak += str[idx]
    else
      current_streak = str[idx]
    end

    best_streak = current_streak if current_streak.length >= best_streak.length
  end

  best_streak
end

p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'