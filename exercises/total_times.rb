permutations = {}
(2..12).each do |x|
  permutations[x] = 0
end

die1 = Array(1..6)
die2 = Array(1..6)

# looping through 2 arrays
die1.each do |i|
  die2.each do |j|
    # adds the two dice rolls
    # if the total matches the permutations keys, then increase the value by 1
    permutations[i + j] += 1
  end
end

#show results
permutations.each do |k, v|
  puts "#{k} occurs #{v} times"
end