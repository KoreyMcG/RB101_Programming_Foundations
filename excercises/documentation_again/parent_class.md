Given the following code:

```ruby
s = 'abc'
puts s.public_methods.inspect
```

How would you modify this code to print just the public methods that are defined or
overridden by the ```string``` class?

> puts s.public_methods(all=false).inspect
