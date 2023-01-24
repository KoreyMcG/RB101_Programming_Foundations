#  def reverse(array)
#    new_array = []
#    counter = -1
#  
#    array.size.times do
#      new_array << array[counter]
#      counter -= 1
#    end
#  
#    new_array
#  end

def reverse(array)
  array.reduce([], :unshift)
end

reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
reverse(%w(a b e d c)) == %w(c d e b a)
reverse(['abc']) == ['abc']
reverse([]) == []

list = [1, 3, 2]
new_list = reverse(list)
list.object_id != new_list.object_id
list == [1, 3, 2]
new_list == [2, 3, 1]
