#  def sequence(integer)
#    array = []
#    1.upto(integer) { |i| array << i }
#    array
#  end

def sequence(integer)
  integer > 0 ? (1..integer).to_a : (integer..0).to_a
end

sequence(5)
sequence(3)
sequence(1)
sequence(-10)
