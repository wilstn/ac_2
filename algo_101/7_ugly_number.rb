# Exercise 7
# Write a program to check whether a given number is an ugly number.
# Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
# Note that 1 is typically treated as an ugly number.

def is_ugly(num)

  prime_check = [2,3,5]
  ugly = false

  if num == 1
    ugly = true
  else
    for ugly_prime in prime_check
      while num % ugly_prime == 0
        num /= ugly_prime
        if num == 1
          ugly = true
          break
        end
      end
    end
  end
  puts ugly
end

is_ugly(6)
is_ugly(8)
is_ugly(14)
is_ugly(28)
is_ugly(30)
