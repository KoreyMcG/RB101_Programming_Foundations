```ruby
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
```

> In this example when we assign ```name``` to the string object ```'Bob'``` it is pointing
> to that objects unique memory location.
>
> When we assign ```save_name = name``` we are actually creating a variable that
> points to names object which is 'Bob'
>
> The reassignment of ```name = 'Alice'``` now creates a new string object ```'Alice'```
> and redirects ```name``` to reference that object location.
>
> It does not affect ```save_name``` because ```save_name``` has always been pointing
> towards the string object ```'Bob'``` and not the variable ```name```


```ruby
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
```

> In this example ```name``` is pointing towards the object 'Bob'; ```save_name```
> is then also pointed towards the object ```'Bob'```. When you call the mutating
> method name.upcase! it changes the actual object ```'Bob'``` to ```BOB``` so 
> ```save_name``` and ```name``` will both put ```'BOB'```
