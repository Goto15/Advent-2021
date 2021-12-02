input_data = File.read("input.txt").split("\n")

forward = 0
depth = 0

input_data.each do |instruction|
  if instruction.chars.first == 'f'
    forward += instruction.chars.last.to_i
  elsif instruction.chars.first == 'd'
    depth += instruction.chars.last.to_i
  else
    depth -= instruction.chars.last.to_i
  end
end

puts forward * depth