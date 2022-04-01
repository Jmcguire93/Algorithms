#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
  i = 1
  n.times do
    puts " " * (n - i) + "#" * i 
    i += 1
  end
end

n = gets.strip.to_i

staircase n