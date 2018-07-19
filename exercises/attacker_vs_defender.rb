attacker_armies = 5
defender_armies = 5

# heredoc way to write multiline text
puts <<~END
  New Battle Begins!
  ==================

  Armies before the battle:
  Attacker: #{attacker_armies} armies
  Defender: #{defender_armies} armies
END

# initial army
attacker_die1 = Random.rand(1..6)
defender_die1 = Random.rand(1..6)

# check if the teams can have more than 1 army and if yes, then roll another die
# attacker --> max 3 armies | defender --> max 2 armies
if attacker_armies > 2
  attacker_die2 = Random.rand(1..6)
else
  attacker_die2 = nil # if not then it doesn't exists
end

if attacker_armies > 3
  attacker_die3 = Random.rand(1..6)
else
  attacker_die3 = nil # if not then it doesn't exists
end
