METHOD_DATA = [
    ["Question: What is a block in ruby?",
                "Correct Answer: 
A block is part of a method invocation. It is an argument passed to a method 
followed by ( curly braces { } ) or ( do..end ).

The same way you can pass an arguement to a method at invocation, when a method
is called with a block, the block will act as an argument to that method."],
    ["Question: What does the following code do and why?
1| def greetings
2|   puts 'Goodbye'
3| end
4|
5| word = 'Hello'
6|
7| greetings do
8|   puts word
9| end",
    "Correct Answer:
The greetings method is invoked with a block, but the method is not defined to
use a block in any way and so the block is not executed."],
    ["Question: What does this following code do and why?
1| def greetings
2|   yield
3|   puts 'Goodbye'
4| end
5|
6| word = 'Hello'
7|
8| greetings do
9|   puts word
10| end",
    "Correct Answer:
Yield allows the block to execute the code at least once, allowing it access to
the local variable word"]
]
