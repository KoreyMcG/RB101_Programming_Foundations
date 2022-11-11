```ruby
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one is: one"
puts "two is: #{two}" # => "two is: two"
puts "three is: #{three}" # => "three is: three"
```

> The variables object_id is being passed through as a reference via an 
> arguement; however once inside the method definition the newly initialized 
> variables now clone the original object_id creating new objects.

```ruby
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one is: one"
puts "two is: #{two}" # => "two is: two"
puts "three is: #{three}" # => "three is: three"
```

> Same output as problem 1 for the same reasoning.

```ruby
def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one is: two"
puts "two is: #{two}" # => "two is: three"
puts "three is: #{three}" # => "three is: one"
```
> The variables passed through by reference via the parameters are being modified
> due to the method invocation .gsub!; instead of using a clone or a newly created
> local variable the original objects are being changed.
