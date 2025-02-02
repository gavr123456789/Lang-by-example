# 0 creating project
# just creat a file and run
# `nim r --hints=off file.nim`
# or
# `nimble init ProjectName`
# `nimble run`
# https://marketplace.visualstudio.com/items?itemName=nimsaem.nimvscode
{.experimental: "strictEffects".}
{.push raises:[] .}
# 1 type declaration
type Person = object
  name: string
  age: int

# 2 tagged union declaration
type 
  UserKind = enum LoggedIn, Guest
  User = object
    case kind: UserKind
    of LoggedIn:
      name: string
    of Guest:
      discard
  
# 3 Hello world
echo "Hello world!"

# 4 creating instance of type
var bob = Person(name: "Bob", age: 42)

# 7 create a function for type
proc haveBirthday(self: var Person) = # var means mutable argument
  # 6 change instance field
  self.age += 1
# "pure" functions are possible
func haveBirthdatyPure(self: Person): Person =
  Person(name: self.name, age: self.age + 1)

# 5 call function
bob.haveBirthday # same as haveBirthday(bob)

# call pure function
let immutableBob = Person(name: "Bob", age: 42)
let olderBob = immutableBob.haveBirthdatyPure

# 8 loop
for i in 1..10:
  echo i

# 9 if
proc sign(num: int): string =
  if num > 0: 
    "foo"
  elif num < 0:
    "bar"
  else:
    "42"

# 10 Switch
proc getName(x: User): string = 
  case x.kind:
  of LoggedIn:
    x.name
  of Guest:
    "Guest user"


# 11 array
var arr = @[1, 2] # @ makes in dynamic
arr.add 3

import std/[sequtils]
let 
  mappedArr = arr.mapIt(it * it)
  filtered = mappedArr.filterIt(it mod 2 == 0)
  both = mappedArr.concat filtered

# 12 Map
import std/tables
proc hg() =
  
  var table = {1: "a", 2: "b"}.toTable
  try:
    table[3] = "c"
    # Error, if not catch(push raises:[])
    echo table[4]
  except KeyError:
    echo "error"
  
# 13 import from another file
import anotherFile
let sum = 1.add 2

