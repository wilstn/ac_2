def read_file(url)
  file_data = []
  File.open(url).each_line do |f|
    file_data << f.strip
  end
  return file_data
end

file_items = read_file("testing_sudoku.txt")

new_array = []

file_items.each do |element|
  new_array << element.split(',')
end

new_array.each do |value|
  new_array2 << value.to_i
end

new_array2 = new_array.flatten
summation = nil


print new_array.flatten.sort
#
# print new_array
# def constraints(file)
#   file.each {|num| sum+=num}
#     if sum > 45
#       print ""
