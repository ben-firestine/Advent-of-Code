input = File.readlines('C:\Users\Ben Firestine\github\Advent-of-Code\2020\Day_3\input.txt').map{|line| line.chomp.split('')}

def tree_counter(map, value)
  trees = 0
  position = [0, 0]

  line_length = map[0].length
  map_length = map.length

  loop do
      position[0] += value[0]
      position[1] += value[1]

      break unless position[0] < map_length

      position[1] %= line_length
      trees += 1 if map[position[0]][position[1]] == "#"
  end

  trees
  
end

puts "The total tree count is: #{tree_counter(input, [1, 3])}"
