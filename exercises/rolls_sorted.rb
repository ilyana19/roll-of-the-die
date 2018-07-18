sorted_rolls = []

10.times do
  die = Random.rand(1..6)
  sorted_rolls.push(die)
end

sorted_rolls.sort!
puts "The result of your roll is #{sorted_rolls}."