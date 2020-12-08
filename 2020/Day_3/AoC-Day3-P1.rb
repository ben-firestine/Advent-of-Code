input = File.readlines('C:\Users\Ben Firestine\github\Advent-of-Code\2020\Day_3\input.txt').map{|line| line.chomp.split('')}

def tree_counter(input, value)
  trees = 0
  position = [0, 0]

  line_length = input[0].length
  map_length = input.length

  loop do
      position[0] += value[0]
      position[1] += value[1]

      break unless position[0] < map_length

      position[1] %= line_length
      if input[position[0]][position[1]] == "#" then trees += 1 end
  end
end

puts "The total tree count is: #{tree_counter(input, [1, 3])}"
