input_data = File.read("input.txt").split.map(&:to_i)

increased_depth = 0

input_data.each_with_index do |depth, index|
  prev_window = input_data[index..index+2]
  next_window = input_data[index+1..index+3]

  if next_window.sum > prev_window.sum
    increased_depth += 1
  end
end

puts increased_depth