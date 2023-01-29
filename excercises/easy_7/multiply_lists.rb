#  def multiply_list(array1, array2)
#    array1.map.with_index { |n, idx| n * array2[idx] }
#  end

def multiply_list(array1, array2)
  array1.zip(array2).map { |n| n.inject(:*) }  # => [27, 50, 77]
end                                            # => :multiply_list

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]  # => true
