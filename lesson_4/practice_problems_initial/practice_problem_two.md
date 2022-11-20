```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
  end
```

> Count with no arguement and a block given, calls the block with each element;
> returns the count of elements for which the block returns a truthy value.
>
> You can find this using ruby docs and searching under the Array documentation
> Count method invocation.
