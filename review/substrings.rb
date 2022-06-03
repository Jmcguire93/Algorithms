# Write a method, String#substrings, that takes in a optional length argument
  # The method should return an array of the substrings that have the given length.
  # If no length is given, return all substrings.

class String
  def substrings(length = nil)
    subs = []

    (0...self.length).each do |start|
      (start...self.length).each do |ending|
        sub = self[start..ending]
        subs << self[start..ending]
      end
    end

    if length.nil?
      subs
    else
      subs.select { |sub| sub.length == length}
    end
  end
end

p "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
p "cats".substrings(2)  # => ["ca", "at", "ts"]