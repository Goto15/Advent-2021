input_data = File.read("input.txt").split.map(&:to_i)

increase_count = 0

input_data.each_with_index do |depth, index|
  if depth > input_data[index - 1]
    increase_count += 1
  end
end

puts increase_count
