```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```

> Will return [1, nil, nil]
>
> Map will return a new array using the conditions to determine the return value
> Since 1 is not greater than 1 it returns [1]
>
> However since 2 and 3 are greater than 1 the puts num statement will return
> nil for both 2 and 3.
