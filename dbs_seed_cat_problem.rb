a = gets.to_i
test_cases = []

a.times do
  input = gets
  test_cases << input.split(" ").map { |x| x.to_i }
end

end_result = []

test_cases.each do |item|
    cat1_age, cat1_pos, cat2age, cat2pos = item
    dist = (cat2pos - cat1_pos).abs - 1

    if cat1_age > cat2age && dist % 3 == 0
      end_result << 0
    elsif cat1_age < cat2age && dist % 3 == 0
      end_result << 1
    elsif cat1_age > cat2age && dist % 3 != 0
      end_result << 1
    else
      end_result << 0
    end
end

puts end_result
