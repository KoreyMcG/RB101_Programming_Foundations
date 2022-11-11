def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# it will return no because yes does not == no so the ternary operator in bar will
# = false returning "no"
