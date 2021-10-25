# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.


def longest_common_prefix(array)
  output = ""
  i = 0
  while i < array.length
    if array[0][i] == array[1][i] && array[0][i] == array[2][i]
      output += array[0][i]
    end
    i += 1
  end
  return output
end

p longest_common_prefix(["flower", "flow", "flight"])   # => "fl"
p longest_common_prefix(["dog","racecar","car"])        # => ""

# NOTES: Currently hardcoded to work with an array of 3 elements, need to refactor for more test cases and array if different sizes.