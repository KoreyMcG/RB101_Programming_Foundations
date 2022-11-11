def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my_string will now look like "pumpkinsrutabaga' because the referenced object
# passed into the tricky_method_two parameter will still reference the original
# object_id location. So the shovel operator with appead the new string to the end
# of the old string. 
#
# my_array will look like ["pumpkins"] because when an_array_param reassignment is
# initialized it creates a new local my_array variable which is no longer pointing
# towards the original my_array which was passed into the method via an arguement.
