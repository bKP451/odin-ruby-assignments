$master_code_for_computer = ''

def validate_human_input_master_code
  puts "Please enter a 4-digit 'master code' for the computer to break"
  human_input_master_code = gets.chomp
  valid = false

  if human_input_master_code.length == 4 
    valid = true
  end
  
  for i in 0..human_input_master_code.length-1 do
    if human_input_master_code[i].to_i > 6 || human_input_master_code[i].to_i == 0
      valid = false
    end
  end

  if valid
    return human_input_master_code
  else
    validate_human_input_master_code
  end

end 

def ask_human_master_code
  master_code_for_computer = validate_human_input_master_code
  return master_code_for_computer
end

def winning_message_for_computer(computer_cracked_the_code, index)
  puts "Computer guessed your so-called master code."
end

def color_computer_circle(individual_number, number_index)
  master_code_for_computer_to_guess = $master_code_for_computer
  
  if master_code_for_computer_to_guess.include?(individual_number)
    if(master_code_for_computer_to_guess[number_index] == individual_number)
      return ' ○ '.bg_green
    else
      return ' ○ '.bg_gray
    end
  else 
    return ' ○ '
  end  
end


def display_colorized_computer_guess(computer_guessed_code)
  individual_computer_guess_numbers = ''
  comparison = ''

  4.times do |i|
    individual_computer_guess_numbers = individual_computer_guess_numbers + colorize(computer_guessed_code[i]) + "\t"
    comparison = comparison + color_computer_circle(computer_guessed_code[i], i) + "\t"
  end

  puts individual_computer_guess_numbers + "\t" + comparison + "\n \n"
end


def let_computer_guess_master_code
  computer_guessed_master_code = ''
  4.times do |i|
    computer_guessed_master_code = computer_guessed_master_code + rand(1..6).to_s
  end

  display_colorized_computer_guess(computer_guessed_master_code)

  if computer_guessed_master_code == $master_code_for_computer
    return true
  else 
    return false
  end
  
end




def let_computer_play(master_code_for_computer)
  computer_cracked_the_code = false
  i = 0
  loop do
    i = i + 1
    puts "Iteration #{i}. Computer guesses \n \n"
    computer_cracked_the_code = let_computer_guess_master_code
    puts "Computer cracked the code is #{computer_cracked_the_code}"
    if computer_cracked_the_code || i == 12
      winning_message_for_computer(computer_cracked_the_code, i)
      break
    end
  end
end


def computer_plays
  $master_code_for_computer = ask_human_master_code
  let_computer_play($master_code_for_computer)
end