def substrings(word, dictionary)
  downcase_word = word.downcase
  array_of_given_word = downcase_word.split
  array_of_matching_substrings = []
  i = 0
  output = Hash.new

  while i < dictionary.length do 
    count = 0
    for j in 0..array_of_given_word.length-1
      if array_of_given_word[j].include?(dictionary[i])
        array_of_matching_substrings.push(dictionary[i])
        count = count + 1
      end
    end
    if count > 0
      output[dictionary[i]] = count
    end
      i = i + 1
  end

  p output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)