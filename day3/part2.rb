input_data = File.read("input.txt").split("\n")

def getMode(array, index, co2 = false)
  mode = 0
  count = array.reduce(0){|count, number| count + number[index].to_i}

  if (!co2 && count >= array.length.to_f / 2) || (co2 && count < array.length.to_f / 2)
    mode = 1
  end

  return mode
end

def getRating(input_data, co2 = false)
  input_data[0].chars.each_with_index do |digit, index|
    mode = getMode(input_data, index, co2)
    input_data.select!{|number| number[index].to_i(2) == mode}

    if input_data.length == 1
      return input_data
    end
  end
end

puts getRating(input_data, true).join.to_i(2) # CO2: 1601, O2: 3583
