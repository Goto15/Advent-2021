input_data = File.read("input.txt").split("\n")

forward = 0
depth = 0
aim = 0

input_data.each do |instruction|
  if instruction.chars.first == 'f'
    forward += instruction.chars.last.to_i
    depth += instruction.chars.last.to_i * aim
  elsif instruction.chars.first == 'd'
    aim += instruction.chars.last.to_i
  else
    aim -= instruction.chars.last.to_i
  end
end

puts forward * depth