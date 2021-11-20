var
  a = @[1, 2, 3]
  b = newSeq[int](3)

for i, v in a:
  b[i] = v*v

for i in 4..100:
  b.add(i * i)

b.delete(0)  # takes O(n) time
b = a[0] & b  # Same as original b


# Immutability

let a = @[1, 2, 3]
a.add(4)

var b = @[1, 2, 3]
b.add(4)

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