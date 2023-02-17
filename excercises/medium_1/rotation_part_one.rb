#  def rotation_array(array)
#    new_array = array.dup
#    new_array << new_array.shift
#  end

#  def rotation_array(array)
#    array.slice(1..-1) << array[0]
#  end

def rotation_array(array)
  array.select.with_index { |e, i| i > 0 } << array[0]
end

rotation_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotation_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotation_array(['a']) ==['a']

x = [1, 2, 3, 4]
rotation_array(x) == [2, 3, 4, 1]
x == [1, 2, 3, 4]
