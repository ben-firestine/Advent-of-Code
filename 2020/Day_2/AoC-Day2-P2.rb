input = File.readlines('C:\Users\Ben Firestine\github\Advent-of-Code\2020\Day_2\input.txt')
passwords = 0

input. each do |item|

  #Parse initial value
  policy, pass = item.split(':')
  policy_requirement, policy_letter = policy.split(' ')

  #Get min and max requirement
  pos_1 = (policy_requirement.split('-').first).to_i
  pos_2 = (policy_requirement.split('-').last).to_i

  #Checks password for issues
  if pass[pos_1] == policy_letter && pass[pos_2] != policy_letter then passwords += 1 end
  if pass[pos_1] != policy_letter && pass[pos_2] == policy_letter then passwords += 1 end

end

puts "The number of valid passwords is: #{passwords}"
