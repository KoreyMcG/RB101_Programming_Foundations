The ```Array#bsearch``` method is used to search ordered ```Array```s more quickly than ```find``` and ```#select``` can. Assume you have the following code:
How would you search this ```Array``` to find the first element whos value exceeds ```8```?
```ruby
a = [1, 4, 8, 11, 15, 19]

a.bsearch { |x| x > 8 }
```
