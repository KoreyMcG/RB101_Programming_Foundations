#  def merge(array_one, array_two)
#    array_one.concat(array_two).uniq
#  end

def merge(array_one, array_two)
  array_one | array_two
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
