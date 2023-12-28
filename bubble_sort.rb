def bubble_sort(unsorted_array)
  return unsorted_array if unsorted_array.length <= 1
  i = 0
  temp = 0
  n = unsorted_array.length
  
  for i in 1..n-2 do
    single_pass(unsorted_array)
    p "Pass #{i}: #{unsorted_array}"
  end

  return unsorted_array

end

def single_pass(unsorted_array)
  i = 0
  while i < unsorted_array.length-1
    if unsorted_array[i] > unsorted_array[i+1]
      temp = unsorted_array[i]
      unsorted_array[i] = unsorted_array[i+1]
      unsorted_array[i+1] = temp
    end
    i = i + 1
  end
end

p bubble_sort([5, 1, 4, 2, 8])