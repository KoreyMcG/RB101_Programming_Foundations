#  def buy_fruit(array)
#    array.map { |grocery| ((grocery[0] + ' ') * grocery[1]).split(' ') }.flatten
#  end

#  def buy_fruit(array)
#    expanded_list = []
#  
#    array.each do |item|
#      fruit, quantity = item[0], item[1]
#      quantity.times { expanded_list << fruit }
#    end
#  
#    expanded_list
#  end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
