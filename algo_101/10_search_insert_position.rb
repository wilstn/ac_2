# Exercise 10
# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You may assume no duplicates in the array.
#
# def search_insert(nums, target)
#
#   if nums.include?(target)
#     return puts nums.index(target)
#   end
#
#   if target < nums.first
#     return puts 0
#   end
#
#   if target > nums.last
#     return puts nums.length
#   end
#
#   nums.each_with_index do |v,k|
#     if v > target
#       return puts k
#     end
#   end
#
# end
#
# search_insert([1,3,5,6],5) #2
# search_insert([1,3,5,6],2) #1
# search_insert([1,2,5,6],3) #2
# search_insert([1,3,5,6],7) #4
# search_insert([1,3,5,6],0) #0
# search_insert([-1,3,5,6],0) #1
# search_insert([1,2,6],4) #2

# push then sort
def search_insert2(nums, target)
  if nums.include?(target)
    puts nums.index(target)
  else
    nums << target
    puts nums.sort.index(target)
  end
end

search_insert2([1,3,5,6],5) #2
search_insert2([1,3,5,6],2) #1
search_insert2([1,2,5,6],3) #2
search_insert2([1,3,5,6],7) #4
search_insert2([1,3,5,6],0) #0
search_insert2([-1,3,5,6],0) #1
search_insert2([1,2,6],4) #2
