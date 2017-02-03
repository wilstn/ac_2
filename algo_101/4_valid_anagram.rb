# Exercise 4
# Given two strings s and t, write a function to determine if t is an anagram of s.
# For example,
# s = "anagram", t = "nagaram", return true. s = "rat", t = "car", return false.
# Note:
# You may assume the string contains only lowercase alphabets.

def is_valid_anagram(s, t)
  first_string = s.split("")
  second_string = t.split("")

  first_hash = {}
  second_hash = {}

  first_string.each {|char| first_hash[char] = ""}
  second_string.each {|char| second_hash[char] = ""}

  first_hash.eql?(second_hash) ? (puts "true") : (puts "false")
end

is_valid_anagram("anagram","nagaram")
is_valid_anagram("rat","car")
is_valid_anagram("bus","gus")
is_valid_anagram("rust","must")
