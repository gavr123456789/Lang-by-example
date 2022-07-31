{.experimental: "notnil".}

type
  NilableObject = ref object
    a: int
  NotNilObject = NilableObject not nil
  
proc p(x: NotNilObject) =
  echo x.a # ensured to dereference without an error

p(nil)

var x: NilableObject
if x.isNil:
  p(x)
else:
  p(x) # ok