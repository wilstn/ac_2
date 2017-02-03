def reverse_i(x)
  y = x.to_s.split("").reverse

  if y[y.length-1] == "-"
    y.unshift("-")
    y.pop
  end

  if y.join("").to_i > 2147483647 || y.join("").to_i < -2147483647
    return 0
  else
    return y.join("").to_i
  end

end

reverse_i(-9856)
reverse_i(9856)
reverse_i(1534236469)
