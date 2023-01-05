PRECEDENCE_DATA = [
    ["Question: In which direction does Ruby evaluate the following code?
1| a = b = c = 3
2| puts a if a == b if a == c",
    "Correct Answer:
Ruby will evaluate the code right to left due to multiple assignment. 
Right-to-left evaluation occurs when you do multiple assignements or multiple
modifiers."],

    ["Question: What happens when the following code is ran and why?
1| 3 ? 1 / 0 : 1 + 2",
    "Correct Answer:
The code raises error ZeroDivisionError. When ruby interperates the code it will
first look at the at the ternary operator 3 ? and evaluate whether it is true or
false. Since integers in ruby always return true it then reads the code to the
left of the ':' and raises an error."],

    ["Question: What is output when you run the following code and why?
1| array = [1, 2, 3]
2|
3| p array.map do |num|
4|     num + 1
5|   end",
    "Correct Answer:
outputs #<Enumerator: [1, 2, 3]:map>

In Ruby blocks have the lowest precedence. a 'do..end' block has slightly
less precedence than the arguement passed to p. Essentially the code runs as
follows:
p(array.map) runs first return before the rest of the code runs returning
and Enumerator with the block arguement so the block arguement never gets ran"],

    ["Question: What is the output when you run the following code and why?
1| array = [1, 2, 3]
2|
3| p array.map { |num| num + 1 }",
    "Correct Answer:
outputs [2, 3, 4]

The block arguement '{  }' has a slightly higher precedence than the 'do..end'
arguement so when the method 'p' is ran Ruby will first evaluate the '{ }'
arguement and then p will run."]
]
