a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# A and C will be pointing towards the same object_id; b will have its own object_id
