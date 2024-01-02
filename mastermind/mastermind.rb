puts "SECRET NUMBER GUESSER"

# User guesses in different iterations
$user_guesses = []

def print_user_guess(user_guess)
  puts "[#{user_guess[0]}]   [#{user_guess[1]}]   [#{user_guess[2]}]   [#{user_guess[3]}]"
end

def numeric?(number)
  number =~ /[0-9]/
end

def include_only_numerals(user_guess)
  valid = true
  for i in 0..user_guess.length-1
    if !numeric?(user_guess[i]) 
      valid = false
    end
  end
  return valid
end

def validate_user_guess(user_guess)
  if user_guess.length == 4 && include_only_numerals(user_guess)
     return true
  else 
    return false
  end
end



def get_user_guess(iteration)
  puts "Enter the 4-digit number"
  user_guess = gets.chomp
  return user_guess
end

def check_the_user_input(iteration)
  user_input = get_user_guess(iteration)
  if !validate_user_guess(user_input)
    puts "iteration is #{iteration}"
    get_user_guess(iteration)
  else
    $user_guesses[iteration] = user_input 
    check_for_match($user_guesses[iteration])
  end
end

def generate_secret_number
  # The generated number will be of 4 digits
  return rand(0..9999)
end

def check_for_match(user_guess)
  secret_number = generate_secret_number
  puts "I need to compare against #{user_guess}"
end


for a in 0..2 do
  check_the_user_input(a)
end


