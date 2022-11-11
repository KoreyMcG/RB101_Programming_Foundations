if false                    # => false
  greeting = "hello world"
end                         # => nil

greeting  # => nil

# Will throw an error because the local variable is created when the parser
# encounters the assignment, not when the assignment occurs.
# 
#
# answer:
# Will throw nil even though the parser never initialized local variable because
# any variables created in an if statement result in nil.
