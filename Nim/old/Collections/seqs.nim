import std/[sequtils]

var
  a = @[1, 2, 3]
  b = a.mapIt(it * it)
  c = a.filterIt(it mod 2 == 0)

# iterate elem and index
for i, v in a:
  b[i] = v*v

for i in 4..10:
  b.add(i * i)

echo "b = ", b

# Sum of lists
let sumList = a & b
echo sumList

# remove item
b.delete(0)  # takes O(n) time
b = a[0] & b  # Same as original b


# Immutability

let d = @[1, 2, 3]
d.add(4) # ERROR

var e = @[1, 2, 3]
e.add(4)

proc doSomething(mySeq: seq[int]) =
  mySeq[0] = 2  # this is a compile-time error
var testSeq = @[1, 2, 3]
doSomething(testSeq)

proc foo(mySeq: var seq[int]) =
  mySeq[9] = 999

var thisSeq = newSeq[int](10)
foo(thisSeq)

assert thisSeq[9] == 999

# send by value, modify only copy

proc doSomething2(mySeq: seq[int]) =
  var varMySeq = mySeq  # copy the seq
  varMySeq[0] = 999
  assert varMySeq[0] == 999
var testSeq2 = @[1, 2, 3]
doSomething(testSeq)
assert testSeq[0] == 1