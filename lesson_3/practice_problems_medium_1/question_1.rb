#  messages = "The Flintstones Rock!"  # => "The Flintstones Rock!"
#  
#  10.times { |_| puts messages && messages = "  " + messages }  # => 10

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }  # => 10

# >> The Flintstones Rock!
# >>  The Flintstones Rock!
# >>   The Flintstones Rock!
# >>    The Flintstones Rock!
# >>     The Flintstones Rock!
# >>      The Flintstones Rock!
# >>       The Flintstones Rock!
# >>        The Flintstones Rock!
# >>         The Flintstones Rock!
# >>          The Flintstones Rock!
