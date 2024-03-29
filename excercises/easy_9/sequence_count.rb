#  def sequence(count, start)
#    array = []
#    multiple = 1
#  
#    count.times do
#      array << (start * multiple)
#      multiple += 1
#    end
#  
#    array
#  end

def sequence(count, first)
  (1..count).map { |value| value * first }
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
