

def check_for_winner(player_steps, system_steps)
  winning_combination = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  puts "Checking for winner"
  puts "player steps #{player_steps}"
  if winning_combination.include?(player_steps)
    puts "Player Won"
  elsif winning_combination.include?(system_steps)
    puts "System Won"
  else 
    puts "Match Tied"
  end
end