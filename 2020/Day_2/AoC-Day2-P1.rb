input = File.readlines('C:\Users\Ben Firestine\github\Advent-of-Code\2020\Day_2\input.txt')
passwords = 0

input. each do |item|
  policy, pass = item.split(':')
  policy_requirement, policy_letter = policy.split(' ')

  min = policy_requirement.split('-').first
  max = policy_requirement.split('-').last

  if pass.count(policy_letter).between?(min.to_i, max.to_i)
    passwords += 1
  end
end

puts passwords
