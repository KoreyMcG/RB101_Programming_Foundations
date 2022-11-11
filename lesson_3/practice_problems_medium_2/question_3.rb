def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my_array will = ["pumpkins", "rutabaga"] because the shovel operator (<<) mutates
# the object to the left.
#
# my_string will = "pumpkins" because the reassignment in the method definition will
# not affect the variable outside the definition as it creates a new locale object.
