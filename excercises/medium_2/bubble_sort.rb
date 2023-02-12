#  def bubble_sort!(array)
#    array.size.times do                                            # => 2, 5, 7
#      idx = 0                                                      # => 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
#      until idx == array.size - 1                                  # => false, true, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, fals...
#        if array[idx + 1] < array[idx]                             # => true, false, true, false, true, true, false, true, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, true, true, true, false, true, true, true, false, false, false, true, true, false, false, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
#          array[idx], array[idx + 1] = array[idx + 1], array[idx]  # => [3, 5], [2, 6], [1, 7], [4, 7], [1, 6], [4, 6], [1, 2], ["Pete", "Sue"], ["Alice", "Sue"], ["Rachel", "Tyler"], ["Kim", "Tyler"], ["Bonnie", "Tyler"], ["Alice", "Pete"], ["Rachel", "Sue"], ["Kim", "Sue"], ["Bonnie", "Sue"], ["Kim", "Rachel"], ["Bonnie", "Rachel"], ["Kim", "Pete"], ["Bonnie", "Pete"], ["Bonnie", "Kim"]
#        end                                                        # => [3, 5], nil, [2, 6], nil, [1, 7], [4, 7], nil, [1, 6], [4, 6], nil, [1, 2], nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, ["Pete", "Sue"], ["Alice", "Sue"], nil, ["Rachel", "Tyler"], ["Kim", "Tyler"], ["Bonnie", "Tyler"], ["Alice", "Pete"], nil, ["Rachel", "Sue"], ["Kim", "Sue"], ["Bonnie", "Sue"], nil, nil, nil, ["Kim", "Rachel"], ["Bonnie", "Rachel"], nil, nil, nil, ["Kim", "Pete"], ["Bonnie", "Pete"], nil, nil, ...
#        idx += 1                                                   # => 1,      1,   1,      2,   3,      4,      1,   2,      3,      4,   1,      2,   3,   4,   1,   2,   3,   4,   1,   2,   3,   4,   1,               2,                3,   4,                   5,                6,                   1,                 2,   3,                 4,              5,                 6,   1,   2,   3,                 4,                    5,   6,   1,   2,               3,                  4,   5,   ...
#      end                                                          # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
#    end                                                            # => 2,      5,               7
#    array                                                          # => [3, 5], [1, 2, 4, 6, 7], ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]
#  end                                                              # => :bubble_sort!

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
end


array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
