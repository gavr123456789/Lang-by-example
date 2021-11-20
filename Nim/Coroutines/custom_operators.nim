proc `$`(a: array[2, array[2, int]]): string =
  result = ""
  for v in a:
    for vx in v:
      result.add($vx & ", ")
    result.add("\n")

echo([[1, 2], [3, 4]])  # See varargs for
                        # how echo works

proc `^&*^@%`(a, b: string): string =
  ## A confusingly named useless operator
  result = a[0] & b[high(b)]

assert("foo" ^&*^@% "bar" == "fr")