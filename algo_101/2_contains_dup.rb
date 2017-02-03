# Exercise 2
# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.


def contains_duplicate(array)
  sorted_array = array.sort
  sorted_array.each_with_index do |value,index|
    if value == sorted_array[index + 1]
      puts true
    else
      puts false
    end
  end
end

contains_duplicate([9,2,3,4,5,6])
contains_duplicate([8,2,3,2,5,6])
contains_duplicate([7,2,3,5,5,6])


# Using hash way
#
# def contains_duplicate2(nums)
#   set = {}
#   nums.each do |n|
#     if set.has_key?(n)
#       return true
#     end
#     set[n] = 1
#   end
#   return false
# end
#
# contains_duplicate2([2,3,4,5,6])
# contains_duplicate2([2,3,2,5,6])
# contains_duplicate2([2,3,5,5,6])



#Ignore for personal reference. > mutating the array, index count independent but array pos change..
## use for i in range instead?
# def test(num)
#   for i in num
#     puts "Before: #{i} , #{num}"
#     num.shift
#     puts "After: #{i} , #{num}"
#   end
# end
#
# test([1,2,3,4,5,6])
