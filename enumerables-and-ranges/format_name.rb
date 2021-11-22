# Format Name
# Write a method format_name that takes in a name string and returns the name properly capitalized.

def format_name(name)
  parts = name.split(" ")
  formatted = []

  parts.each { |part| formatted << part[0].upcase + part[1..-1].downcase }

  formatted.join(" ")
end

p format_name("chase WILSON") # => "Chase Wilson"
p format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"