VARIABLE_SCOPE_DATA = [
    ["Question: What is output during this code and why?
1| n = 10
2|
3| [1, 2, 3].each do |n|
4|   puts n
5| end",
    "Correct Answer:
The following code will output 1, 2, 3 because of variable shadowing. 'n' is
assigned in the outer scope on line 1 as well as being assigned in the inner
scope of the .each method. because both scopes have a variable with the same
assignment 'n' when the each method is invoked it can not access the 'n' in the
outer scope."],

    ["Question: What is the output of this code and why?
1| n = 10
2|
3| 1.times do |n|
4|   n = 11
5| end
6|
7| puts n",
    "Correct Answer:
line 7 will output 10 because of variable shadowing. When 'n' is reassigned on
line 4 it is reassigning the local variable |n| in the times method. It is unable
to reach the local variable 'n' in the outer scope."],

    ["Question: What is the value of a in the loop condition and at the end of the code?
1| a = 1
2|
3| loop do
4|   puts a
5|   a = a + 1
6|   break
7| end
8|
9| puts a",
     "Correct Answer: 
a is initialized in the outerscope line 1. a is then output as 1
during the initial loop do block. a is then reassigned as 2 in the inner block so that the
last line 'puts a' will output 2 and return nil."],

    ["Question: What will be output and returned during this code?
1| loop do
2|   b = 1
3|   break
4| end
5|
6| puts b",
    "Correct Answer: 
=> NameError: undefined local variable or method 'b' for main:Object 
the 'loop' is actually a method in the Kernal module with the block ( do..end )
being fed in as an arguement. 'b' is then initialized in the inner scope of the
( do..end ) block argument so it is unavailable in the outer scope causing it to
raise NameError."],

    ["Question: What does the following code output?
1| 2.times do
2|   a = 'hi'
3|   puts a
4| end
5|
6| loop do
7|   puts a
8|   break
9| end
10|
11| puts a",
    "Correct Answer: 
puts on line 7 and 11 will both throw a name error due to 'a' being
assigned within the times method invocation. It is locally scoped to the times method

'a' does not have an outer scope that the other two puts can draw from"],

    ["Question: What does the following code produce and why?
1| hello = 'hi'
2|
3| def hello
4|  'Saying hello!'
5| end
6|
7| puts hello",
    "Correct Answer:
The code will output 'hi' and return nil. Ruby will first search for a local
variable 'hello' and if its not found will then search for a method with the
given name. If neither or found a NameError message will be thrown."],

    ["Question: What does the following code produce and why?
1| hello = 'hi'
2|
3| def hello
4|   'Saying hello!'
5| end
6|
7| puts hello()",
    "Correct Answer:
The code will output 'Saying Hello' and return nil. Ruby will search for the
method definition hello because we put parenthesis after the hello."],
    ["Question: What does the following code produce and why?
1| arr = [1, 2, 3]
2|
3| for i in arr do
4|   a = 5
5| end
6|
7| puts a",
    "Correct Answer: Outputs => '5'

The code will output the variable 'a' initialized in the 'for' loop; In Ruby
The 'for' loop, 'while' loop, 'until' loop are all considered flow control
constructs built into the Ruby programming itself so the variables initialized
are available throughout the entire scope of the program.

The 'do..end' is deceptive and appears as a block arguement being fed into a
method however; 'for', 'until', 'while' are not methods but Ruby Code."],

    ["Question: What does the following code do and why?
1| a = 5
2|
3| loop do
4|   b = a
5| end
6|
7| puts b",
    "Correct Answer: NameError
This above code will output a NameError because b is initialized in the inner
scope of a block ( loop do..end ). Unlike the 'for', 'while', 'until' looping
constructs 'loop' is actual a method in the Kernel module and not actually part
of Rubys main code."]
]
