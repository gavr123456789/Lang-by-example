import std/tables

# value table
var
  a = {1: "one", 2: "two"}.toTable
  b = a

assert a == b

b[3] = "three"
assert 3 notin a
assert 3 in b
assert a != b

# ref table

var
  a2 = {1: "one", 2: "two"}.newTable 
  b2 = a2

assert a2 == b2

b2[3] = "three"

assert 3 in a2
assert 3 in b2
assert a2 == b2

