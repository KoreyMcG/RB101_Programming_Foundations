What does this code print?

```ruby
5.step(to:10, by: 3) { |value| puts value }
```

> Step is found in the 'Numeric' class which allows all higher-level numeric classes to inherit
> 
> The following code will output the following:
>
> 5, 8
>
> The return value will be self or in this case 5.
