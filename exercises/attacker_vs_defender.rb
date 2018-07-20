attacker_armies = 5
defender_armies = 5

# loop until attacker only has 1 army left and defender has no more armies
while attacker_armies > 1 && defender_armies > 0
  # heredoc way to write multiline text
  puts <<~END
    \nNew Battle Begins!
    ==================

    Armies before the battle:
    Attacker: #{attacker_armies} armies
    Defender: #{defender_armies} armies
  END

  # initial army
  attacker_die1 = Random.rand(1..6)
  defender_die1 = Random.rand(1..6)

  # simplified if statement (SPACING IS IMPORTANT!)
  # if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
  # save the whole result to a variable
  # If army > num then roll the die and save to this variable or keep this variable as nil
  attacker_die2 = attacker_armies > 2 ? Random.rand(1..6) : nil
  attacker_die3 = attacker_armies > 3 ? Random.rand(1..6) : nil
  # attacker_die4 = attacker_armies > 4 ? Random.rand(1..6) : nil
  defender_die2 = defender_armies > 2 ? Random.rand(1..6) : nil

  # save each army dice rolls into an array
  # compact removes nil items from the array
  attacker_dice = [attacker_die1, attacker_die2, attacker_die3].compact.sort.reverse
  defender_dice = [defender_die1, defender_die2].compact.sort.reverse

  # show the arrays of dice rolls
  # if statement shorthand to show player rolls
  puts "\n"
  print "Attacker Rolls #{attacker_dice[0]}"
  print ", #{attacker_dice[1]}" if attacker_dice[1] # add this dice roll if it exists
  print ", #{attacker_dice[2]}" if attacker_dice[2]
  # print ", #{attacker_dice[3]}" if attacker_dice[3]
  puts "\n"
  print "Defender Rolls #{defender_dice[0]}"
  print ", #{defender_dice[1]}" if defender_dice[1]
  puts "\n\n"

  # compare the rolls
  if attacker_dice[0] > defender_dice[0]
    puts "\nAttacker wins a battle: #{attacker_dice[0]} beats #{defender_dice[0]}"
    defender_armies -= 1
  else
    puts "Defender wins a battle: #{defender_dice[0]} beats #{attacker_dice[0]}"
    attacker_armies -= 1
  end

  if attacker_dice[1] && defender_dice[1] # continue to check only if both are not empty
    if attacker_dice[1] > defender_dice[1]
      puts "Attacker wins a battle: #{attacker_dice[1]} beats #{defender_dice[1]}"
      defender_armies -= 1
    else
      puts "Defender wins a battle: #{defender_dice[1]} beats #{attacker_dice[1]}"
      attacker_armies -= 1
    end
  end

  # show number of armies left after each battle
  puts <<~END
    \nArmies after the battle:
    Attacker: #{attacker_armies} armies
    Defender: #{defender_armies} armies
  END
end

# show final result (winnier/loser)
puts <<~END

  Final Results
  ==================

  Attacker's final army count: #{attacker_armies}
  Defender's final army count: #{defender_armies}

END

if defender_armies == 0
  puts "Attacker takes the country!"
else
  puts "Defender retains their country!"
end


