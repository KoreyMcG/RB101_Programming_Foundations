```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

> The return value would be a new object using the first letter of each value
> as the key because value[0] in a string element will take the first letter.
>
> The full value is then assigned to each new key. Returning a new Object:
> => { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
