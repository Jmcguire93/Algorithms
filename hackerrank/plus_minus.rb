#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  count_positive = 0.0
  count_negative = 0.0
  count_zero = 0.0

  arr.each do |num|
    if num.positive? 
      count_positive += 1
    elsif num.negative? 
      count_negative += 1
    else 
      count_zero += 1
    end
  end
  length = arr.length
  p (count_positive / length).truncate(6)
  p (count_negative / length).truncate(6) 
  p (count_zero / length).truncate(6)
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr