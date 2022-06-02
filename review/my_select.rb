# Write a method, Hash#my_select, that takes in an optional proc argument
# The method should return a new hash containing the key-value pairs that return
# true when passed into the proc.
# If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
 
class Hash
  def my_select(&prc)
    prc ||= Proc.new { |k, v| k == v }

    selected = {}
    self.each do |k, v|
      selected[k] = v if prc.call(k, v)
    end
    selected
  end
end

hash_1 = {x: 7, y: 1, z: 8}
p hash_1.my_select { |_k, v| v.odd? }          # => {x: 7, y: 1}

hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
p hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
p hash_2.my_select                            # => {4=>4}