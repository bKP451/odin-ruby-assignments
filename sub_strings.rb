def substrings(word, dictionary)
  original_substring = word.downcase
  i = 0;
  output = Hash.new

  while i < dictionary.length do 
    count = 0
    if dictionary[i] == original_substring
      count = count + 1
      output[dictionary[i]] = count  
    end
    i = i + 1
  end

  return output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("below", dictionary);