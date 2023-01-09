str = "Hello world?"  # => "Hello world?"

print "Matched '?'" if str.match(/\?/)  # => nil
print "Matched 'x'" if str.match(/x/)   # => nil

# >> Matched '?'

