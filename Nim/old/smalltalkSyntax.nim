template `:=`(a, b: untyped) =
  var a = b
# cant create ::
template `:::`(a, b: untyped) =
  const a = b

template `^`(a: typed) =
  return a

sas := "sas!"
echo sas

x ::: proc (a: string): string = a & " sas!"

y ::: proc (): string = ^ "sas"

echo x("foo")
echo y()


template ifTrue(a: bool, b: untyped): untyped =
  if a:
    b
  else:
    discard

var p = true
ifTrue(p):
  echo "sas"