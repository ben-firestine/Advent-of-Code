input = File.readlines('C:\Users\Ben Firestine\github\Advent-of-Code\2020\Day_2\input.txt')
passwords = 0

input. each do |item|
  #Parse initial value
  policy, pass = item.split(':')
  policy_requirement, policy_letter = policy.split(' ')

  #Get min and max requirement
  min = policy_requirement.split('-').first
  max = policy_requirement.split('-').last

  #Checks password for issues
  if pass.count(policy_letter).between?(min.to_i, max.to_i)
    passwords += 1
  end
end

puts passwords
