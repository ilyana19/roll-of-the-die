permutations = {}
counter = 0

# apparently can be done in 1 line
# store the number of times as an object in permutations
(2..12).each {|x| permutations[x] = {num_times: 0}}

# apparently can just use a range to just loop through it (nested)
(1..6).each do |die1|
  (1..6).each do |die2|
    # adding the two dice values and incremeting the number of times object by 1
    permutations[die1 + die2][:num_times] += 1
    counter += 1 #keeping track of how many times it happened for later use
  end
end

# calculating the odds and add it to permutations{} for "mapping" later
permutations.each do |k, v|
  permutations[k][:odds] = (v[:num_times] / counter.to_f * 100).round
  # puts "#{k} occurs #{v[:num_times]} times"
  puts "The odds of #{k} coming up are #{permutations[k][:odds]}%"
end

# find the most likely roll, highest key value pair (it's an array) based on the :odds property, :num_times would've worked too
most_likely = permutations.max_by {|k, v| v[:odds]}
puts "#{most_likely[0]} is most likely to come up with a #{most_likely[1][:odds]}% chance."