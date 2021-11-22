# Format Name
# Write a method format_name that takes in a name string and returns the name properly capitalized.

# Each Loop

def format_name(name)
  parts = name.split(" ")
  formatted = []

  parts.each { |part| formatted << part[0].upcase + part[1..-1].downcase }

  formatted.join(" ")
end

p format_name("chase WILSON") # => "Chase Wilson"
p format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"



# While Loop

def format_name(name)
  parts = name.split(" ")
  formatted = []
  i = 0

  while i < parts.length
    char = parts[i] 
    formatted << char[0].upcase + char[1..-1].downcase  
    i += 1
  end
  formatted.join(" ")
end

p format_name("chase WILSON") # => "Chase Wilson"
p format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"