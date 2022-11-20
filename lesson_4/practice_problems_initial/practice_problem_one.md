```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

> Select will then return the entire array because of the 'truthy' value 'hi'
