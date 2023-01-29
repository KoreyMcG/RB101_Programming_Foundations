#  def multiply_all_pairs(array1, array2)
#    array1.each_with_object([]) do |n1, a|
#      array2.each { |n2| a << (n1 * n2) }
#    end.sort
#  end

def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |n1, n2| n1 * n2 }.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
