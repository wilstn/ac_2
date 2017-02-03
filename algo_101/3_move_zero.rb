# Exercise 3
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
# Note:
# 1. You must do this in-place without making a copy of the array. 2. Minimize the total number of operations.

def move_zero(array)
  zero_count = array.count(0)
  array.delete(0)
  zero_count.times do array << 0 end
  print array
end

puts move_zero([0,0,5,4,6])
puts move_zero([6,0,0,5,4])
puts move_zero([3,0,8,0,9])
