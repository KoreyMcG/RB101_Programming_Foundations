#  def interleave(array1, array2)
#    combined = []
#    counter = 0
#    until combined.size == (array1.size + array2.size)
#      combined << array1[counter] << array2[counter]
#      counter += 1
#    end
#    combined
#  end

def interleave(array1, array2)
  array = array1.zip(array2).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
