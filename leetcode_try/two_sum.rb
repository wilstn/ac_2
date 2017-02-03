def two_sum(nums, target)
  x = nil
  i1 = nil
  i2 = nil
  y = nums.length

  nums.each_with_index do |v,k|
    x = target - v
    if (nums[(k+1)...y]).include?(x)
      i1 = k
      i2 = (nums[(k+1)...y]).index(x) + k+1
      break
    end
  end

  print [i1, i2]
end

two_sum([2,7,11,15],9)
# two_sum([3,2,4],6)
# two_sum([0,4,3,0],0)
