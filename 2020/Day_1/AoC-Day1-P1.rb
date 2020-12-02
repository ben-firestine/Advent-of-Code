numbers = File.readlines('C:\Users\Ben Firestine\github\Advent-of-Code\2020\Day_1\input.txt')

#loops through all the numbers to find a match
numbers.each do |num1|
  numbers.each do |num2|

      #sums the numbers and prints them
      sum = num1.to_i + num2.to_i
      puts num1.strip + '+' + num2.strip + '=' + sum.to_s

      #Checks to see if the numbers equal 2020
      if sum == 2020
        puts num1.to_i * num2.to_i
        exit
      end
    end
  end
