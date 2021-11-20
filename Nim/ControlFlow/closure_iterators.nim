# Closure iterators hold on to their state and can be resumed at any time. 
# The finished() function can be used to check if there are any more elements available in the iterator
proc countTo(n: int): iterator(): int =
  return iterator(): int =
    var i = 0
    while i <= n:
      yield i
      inc i

let countTo20 = countTo(20)

echo countTo20()

var output = ""
# Raw iterator usage:
while true:
  # 1. grab an element
  let next = countTo20()
  # 2. Is the element bogus? It's the end of the loop, discard it
  if finished(countTo20):
    break
  # 3. Loop body goes here:
  output.add($next & " ")

echo output

output = ""
let countTo9 = countTo(9)
for i in countTo9():
  output.add($i)
echo output