permutations = {}
counter = 0

# (2..12).each do |x|
#   permutations[x] = 0
# end

# die1 = Array(1..6)
# die2 = Array(1..6)
#
# # looping through 2 arrays
# die1.each do |i|
#   die2.each do |j|
#     # adds the two dice rolls
#     # if the total matches the permutations keys, then increase the value by 1
#     permutations[i + j] += 1
#   end
# end

# apparently can be done in 1 line
(2..12).each {|x| permutations[x] = 0}

# apparently can just use a range to just loop through it (nested)
(1..6).each do |die1|
  (1..6).each do |die2|
    permutations[die1 + die2] += 1
    counter += 1 #keeping track of how many times it happened for later use
  end
end

#show results
permutations.each do |k, v|
  odds = v.to_f / counter * 100
  puts "The odds of #{k} coming up are #{odds.round}%"
end