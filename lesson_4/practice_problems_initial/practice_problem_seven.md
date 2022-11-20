```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

> The any? method invocation searches for truthy values within a block expression
> The return value of a block is determined by the last expression in the block
> In this scenerio num.odd? is the last evaluated expression and returns a boolean
> of true.
