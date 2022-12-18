array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# When Array1 is referenced it creates an array of strings. Each individual object in that
# array references a different object. When array2 << value is called its actually
# pushing the original object into the array2 reference.
#
# When array1.upcase! is called it upcases the original objects which array2 is
# now pointing towards so array 2 outputs:
#
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
