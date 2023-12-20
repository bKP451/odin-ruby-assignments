def letter?(alphabet)
  alphabet.match?(/[A-Za-z]/)
end

def alphabet_upcase?(alphabet)
  return alphabet == alphabet.upcase
end

def caesar_cipher_individual_characters(alphabet, shift_factor)
  upcase_alphabet = false
  shift_factor = shift_factor
  lowercase_alphabets = ('a'..'z').to_a
  
  if !letter?(alphabet)
    return alphabet
  end

  if alphabet_upcase?(alphabet)
    upcase_alphabet = true
    alphabet = alphabet.downcase
  end 

  current_index = lowercase_alphabets.find_index(alphabet)
  expected_shift_index = current_index + shift_factor

  if expected_shift_index > 25
    expected_shift_index = expected_shift_index - 25 - 1
  end

  if upcase_alphabet
    return lowercase_alphabets[expected_shift_index].upcase
  end

  return lowercase_alphabets[expected_shift_index]
end



def caesar_cipher(raw_text, shift_factor)
  ciphered_text = ""
  i = 0;
  while i < raw_text.length do
    ciphered_text = ciphered_text + caesar_cipher_individual_characters(raw_text[i], shift_factor)
    i = i + 1
  end
  return ciphered_text
end



continue_encryption = "N"
until continue_encryption == "Y" do
  p "Enter raw text and shift_factor separted by :: like Attack the ship::5"
  new_string = gets.chomp
  new_string_array = new_string.split('::')
  p "Caesar ciphered text is"
  p caesar_cipher(new_string_array[0], new_string_array[1].to_i)
  p "Press any key to go another round, to quit press y/Y"
  continue_encryption = gets.chomp.upcase
end

