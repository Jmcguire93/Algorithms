# # Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# # A "100 Coolio Array" meets the following criteria:

# # Its first and last numbers add up to 100,
# # Its second and second-to-last numbers add up to 100,
# # Its third and third-to-last numbers add up to 100,
# # and so on and so forth.

# # Here are examples of 100 Coolio Arrays:

# # [1, 2, 3, 97, 98, 99]
# # [90, 20, 70, 100, 30, 80, 10]

def coolio_array?(array)
  i = 0
  while i <= array.length / 2
    if array[i] + array[-(i + 1)] == 100
      if array[array.length / 2.0] == 100
        return true
      end
    else
      return false
    end
    i += 1
  end
  return true
end

p coolio_array?([1, 2, 3, 97, 98, 99])            #true 
p coolio_array?([90, 20, 70, 100, 30, 80, 10])    #true
p coolio_array?([95, 20, 70, 100, 30, 80, 10])    #false
p coolio_array?([90, 25, 70, 100, 30, 80, 10])    #false ----> not passing this test case, currently getting true, need to work on this more. 

puts "----"

def coolio_array?(array)
  i1 = 0
  i2 = array.length - 1

  while i1 <= array.length / 2.0
    if array[i1] + array[i2] == 100
      return true
    else
      return false
    end
    i1 += 1
    i2 -= 1
  end
  false 
end

p coolio_array?([1, 2, 3, 97, 98, 99])            #true 
p coolio_array?([90, 20, 70, 100, 30, 80, 10])    #true
p coolio_array?([95, 20, 70, 100, 30, 80, 10])    #false
p coolio_array?([90, 25, 70, 100, 30, 80, 10])    #false ----> not passing this test case, currently getting true, need to work on this more.


# NOTES: Currently not fully functional code as it doesn't pass all test cases, work in progress.