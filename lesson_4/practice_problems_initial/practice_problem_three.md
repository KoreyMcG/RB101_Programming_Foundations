```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

> Returns a new Array which elements from the block return 'false' or 'nil'
> Since puts returns nil it will return => [1, 2, 3]
