def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array - first_half
  [first_half, second_half]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
