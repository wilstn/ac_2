# Exercise 5
# Given an array of size n, find the majority element. The majority
# element is the element that appears more than ⌊ n/2 ⌋ times.
# You may assume that the array is non-empty and the majority element
# always exist in the array.

def majority_element(array)
  hash = {}

  array.each do |value|
    if hash[value]
      hash[value] += 1
    else
      hash[value] = 1
    end
  end

  majority_number = hash.select{|element,count| count >= (array.length/2).floor}

  puts majority_number.keys unless majority_number.empty?

end

majority_element([1,2,2,2,2,3,4])
majority_element([1,2,2,2,3,4])
majority_element([1,2,2,3,4])
majority_element([1,2,2,3,3,4])
