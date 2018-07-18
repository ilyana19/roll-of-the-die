die1 = Array(1..6)
die2 = Array(1..6)

# looping through 2 arrays
die1.each do |i|
  die2.each do |j|
    puts "#{i} #{j}"
  end
end