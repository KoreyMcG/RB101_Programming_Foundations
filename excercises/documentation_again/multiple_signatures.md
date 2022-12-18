What do each of these ```puts``` statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7) # => Throws an IndexError
puts a.fetch(7, 'beats me') # => Throws default value 'beats me' because index lies outside array
puts a.fetch(7) { |index| index**2 } # => Throws 49. Only shows when index is out of bounds
```
