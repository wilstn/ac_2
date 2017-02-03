# Exercise 1
# Given an integer, write a function to determine if it is a power of two.

#Original

def is_power_of_two(n)

  if Math.sqrt(n) % 1 == 0
    puts "#{n} is a power of 2"
  else
    puts "#{n} is not a power of 2"
  end
end

is_power_of_two(144)

#More expressive way of writing it
#
# def is_power_of_two2(n)
#   return true if (Math.sqrt(n)).zero?
#   return false
# end
#
# puts is_power_of_two2(5)
