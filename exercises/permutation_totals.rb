die1 = Array(1..6)
die2 = Array(1..6)

# looping through 2 arrays
die1.each do |i|
  die2.each do |j|
    puts "Dice Roll: #{i} #{j}  Total: #{i + j}"
  end
end