# Not really good idea for obvious reasons
let zero = ""
proc `+`(a, b: string): string =
  a & b

proc `*`[T](a: T, b: int): T =
  result = zero
  for i in 0..b-1:
    result = result + a  # calls `+` from line 3

assert("a" * 10 == "aaaaaaaaaa")