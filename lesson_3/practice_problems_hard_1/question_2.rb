greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greeting # => outputs { a: 'hi there' } returns nil


# informal_greeting is pointing towards the object_id of a:'s value 'hi' the
# shovel operator then modifies that object resulting in { a: 'hi there' }
