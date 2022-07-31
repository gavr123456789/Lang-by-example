type
  Dollars* = distinct float
  Rubles* = distinct float

var a = 20.Dollars
var b = 20.Rubles
# a = 25  # Doesn't compile
a = 25.Dollars  # Works fine


proc `*` *(a, b: Dollars): Dollars {.borrow.}
proc `+` *(a, b: Dollars): Dollars {.borrow.}

a = 20.Dollars * 20.Dollars
let c = a + b

type
  Foo = object
    a: int
  MyFoo {.borrow.} = distinct Foo

var value: MyFoo
echo value.a  # Works
