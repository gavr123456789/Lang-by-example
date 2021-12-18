proc printThings(things: varargs[string]) =
  for thing in things:
    echo thing

printThings "words", "to", "print"

# this means apply $ to each arg, so they all strings now
proc printThings2(things: varargs[string, `$`]) =
  for thing in things:
    echo thing

printThings2 "thing 1", 2, @[4, 5, 6]