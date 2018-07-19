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

##################################
# check if the teams can have more than 1 army and if yes, then roll another die
# attacker --> max 3 armies | defender --> max 2 armies
#
# if attacker_armies > 2
#   attacker_die2 = Random.rand(1..6)
# else
#   attacker_die2 = nil # if not then it doesn't exists
# end
#
# if attacker_armies > 3
#   attacker_die3 = Random.rand(1..6)
# else
#   attacker_die3 = nil # if not then it doesn't exists
# end
##################################

# simplified if statement (SPACING IS IMPORTANT!)
# if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
# save the whole result to a variable
# If army > num then roll the die and save to this variable or keep this variable as nil
attacker_die2 = attacker_armies > 2 ? Random.rand(1..6) : nil
attacker_die3 = attacker_armies > 3 ? Random.rand(1..6) : nil
defender_die2 = defender_armies > 2 ? Random.rand(1..6) : nil

# save each army dice rolls into an array
attacker_dice = [attacker_die1, attacker_die2, attacker_die3].sort.reverse
defender_dice = [defender_die1, defender_die2].sort.reverse

# show the arrays of diec rolls
puts <<~END
  \nAttacker rolls #{attacker_dice[0]}, #{attacker_dice[1]}, #{attacker_dice[2]}
  Defender rolls #{defender_dice[0]}, #{defender_dice[1]}
END

# compare the rolls
if attacker_dice[0] > defender_dice[0]
  puts "\nAttacker wins a battle: #{attacker_dice[0]} beats #{defender_dice[0]}"
  defender_armies -= 1
else
  puts "Defender wins a battle: #{defender_dice[0]} beats #{attacker_dice[0]}"
  attacker_armies -= 1
end

if attacker_dice[1] > defender_dice[1]
  puts "Attacker wins a battle: #{attacker_dice[1]} beats #{defender_dice[1]}"
  defender_armies -= 1
else
  puts "Defender wins a battle: #{defender_dice[1]} beats #{attacker_dice[1]}"
  attacker_armies -= 1
end

# show number of armies left after each battle
puts <<~END
  \nArmies after the battle:
  Attacker: #{attacker_armies} armies
  Defender: #{defender_armies} armies
END








