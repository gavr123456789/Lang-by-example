import std/json

type Person = object
  age: Natural
  name: string
# $ == toString
# %* == toJson
echo $(%* Person(name: "Natan", age: 26))



## Note: for JObject, key ordering is preserved, unlike in some languages,
## this is convenient for some use cases. Example:
type Foo = object
  a1, a2, a0, a3, a4: int
doAssert $(%* Foo()) == """{"a1":0,"a2":0,"a0":0,"a3":0,"a4":0}"""
