# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.

#input 1997, 1996
#out return a boolean 

=begin    
def method build method skelton 
check if year is divisble by 4 if year % 4 == 0 
check if year != % 100
check if year % 400
return true if conditions are satisfied to be a leap year 
return false at the end 
=end

def leap_year?(year)
  if year % 4 == 0 
    if year % 100 == 0 
      if year % 400 == 0
        return true 
      end
      return false
    end
    return true  
  end
  false 
end

p leap_year?(1997)  # => false
p leap_year?(1996)  # => true 
p leap_year?(2000)  # => true 
p leap_year?(1900)  # => false 
p leap_year?(400)   # => true
p leap_year?(250)   # => false
p leap_year?(1800)  # => false 
p leap_year?(1703)  # => false
p leap_year?(1911)  # => false
p leap_year?(1912)  # => true 


def leap_year?(year)
  if (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
    return true
  else 
    false 
  end     
end 

puts "-------"

p leap_year?(1997)  # => false
p leap_year?(1996)  # => true 
p leap_year?(2000)  # => true 
p leap_year?(1900)  # => false 
p leap_year?(400)   # => true
p leap_year?(250)   # => false
p leap_year?(1800)  # => false 
p leap_year?(1703)  # => false
p leap_year?(1911)  # => false
p leap_year?(1912)  # => true 