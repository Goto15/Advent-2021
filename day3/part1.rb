input_data = File.read("input.txt").split("\n")

gamma = Array.new(input_data[0].length, 0)
epsilon = Array.new(input_data[0].length, 0)
counts = Array.new(input_data[0].length, 0)

input_data.each do |number|
  number.chars.each_with_index do |bit, index|
    counts[index] += bit.to_i
  end
end

counts.each_with_index do |count, index|
  if count > input_data.length / 2
    gamma[index] = 1
  else
    epsilon[index] = 1
  end
end

puts gamma.join.to_i(2) * epsilon.join.to_i(2)
