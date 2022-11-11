Describe the difference between ! and ? in Ruby. 
> The ! is the bang operator, it is used to describe a method that will mutate
> the caller permenantely.
>
> The ? is used to describe whether a method will return a true or false
> boolean.
>

1. != indicated (does not equal) it is used during boolean expressions
2. !user_name indicates a 'falsy' value
3. words.uniq! indicate that it will mutate the caller
4. ? before an object indicates a ternary operation ex: 10 ? (puts yes) : (puts no) will evaluate as true and put "yes"
5. putting a ? after an object indicates that its checking if its there or not
6. !!user_name indicates its 'truthy' value
