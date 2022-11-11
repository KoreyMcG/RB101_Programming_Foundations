a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# They will all have the same object_id. Numerics in ruby are immutable and have
# a set location in space so no matter what 42 will always point to the same location.
