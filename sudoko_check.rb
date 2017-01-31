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

# print read_file("testing_sudoku.txt"), "\n"

contents = read_file("testing_sudoku.txt")
puts "Your grid is:"
contents.each {|each_row| puts each_row.join(',')}

is_good = true

contents.each_with_index do |row_check, idx_row|
  col_values = contents[0][idx_row] + contents[1][idx_row] + contents[2][idx_row]
  if row_check.reduce(:+) == 15
    next
  else
    is_good = false
    puts "Row #{idx_row + 1}'s values: #{row_check} do not add up to 15"
  end
  if col_values == 15
    next
  else
    is_good = false
    puts "Column #{idx_row + 1}'s values #{contents[0][idx_row]}, #{contents[1][idx_row]}, #{contents[2][idx_row]} do not add up to 15"
  end
end

puts "The grid seems good" if is_good
