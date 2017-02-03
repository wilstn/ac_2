# Exercise 8
# Given an array of integers, every element appears three times except for one, which appears exactly once. Find that single one.
# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

def single_number(nums)
  hash = {}

  nums.each do |element|
    if hash.has_key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  hash.select do |key,value|
    puts "#{key}" if value == 1
  end
  
end

single_number([1,1,1,2,3,3,3])
single_number([1,2,2,2,3,3,3])
single_number([5,5,5,2,2,2,10])

#
# def single_number(nums)
#   x = nums.sort
#   prev_count = 0
#   current_count = 1
#
#   x.each_with_index do |v,k|
#     if v == x[k+1]
#       current_count += 1
#     else
#       prev_count = current_count
#       if prev_count == 1
#         return puts v
#       else
#         current_count = 1
#       end
#     end
#   end
# end
#
# single_number([1,1,1,2,3,3,3])
# single_number([1,2,2,2,3,3,3])
# single_number([5,5,5,2,2,2,10])
