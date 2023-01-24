```ruby
1 | array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
2 | array2 = []
3 | array1.each { |value| array2 << value }
4 | array1.each { |value| value.upcase! if value.start_with?('C', 'S')}
5 |
6 | puts array2
```
---
The following code will output:

"Moe"
"Larry"
"CURLY"
"SHEMP"
"Harpo"
"CHICO"
"Groucho"
"Zeppo"

When array1 is iterated over on line 3 the local variable 'value' is assigned.
'value' is actually pointing towards the object stored within every index in
array1.

Array2 has its own object_id than array1 has however the values stored in each
index is actually still pointing towards the original object so when array1 is
iterated over again calling the destructive method .'upcase!' on the values
the object is being modified.

The values being stored in the indexes of array1 and array2 are both point 
towards the same objects so they both will reflect that.
