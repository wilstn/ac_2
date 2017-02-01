def read_file(url)
  file_data = []
  File.open(url).each_line do |f|
    file_data << f.strip
  end
  file_data.each_with_index do |row, idx|
    file_data[idx] = row.split(',').map { |each_s| each_s.to_i }
  end
  return file_data
end

contents = read_file("testing_sudoku.txt")
puts "Your grid is:"
contents.each {|each_row| puts each_row.join(',')}

is_good = true
super_array = contents, contents.transpose

super_array.each_with_index do |sub_array, super_idx|
  sub_array.each_with_index do |row_check, idx_row|
    if row_check.reduce(:+) != 15
      is_good = false
      if super_idx == 0
        puts "Row #{row_check} do not add up to 15"
      else
        puts "Col #{row_check} do not add up to 15"
      end
    end
  end
end

if contents.uniq.length == contents.length
  is_good = false
  puts "There are duplicate elements in grid."
end

puts "The grid seems good" if is_good
