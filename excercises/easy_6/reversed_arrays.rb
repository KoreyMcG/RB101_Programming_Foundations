def reverse!(array)
  first = 0
  last = -1
  until first == (array.size / 2)
    array[first], array[last] = array[last], array[first]

    first += 1
    last -= 1
  end

  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
