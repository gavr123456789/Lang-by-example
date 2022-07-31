import std/json
import std/options

type
  User = object
    name: string
    age: int
    `type`: Option[string]

let userJson = parseJson("""{ "name": "Nim", "age": 12 }""")
let user = to(userJson, User)
if user.`type`.isSome():
  assert user.`type`.get() != "robot"

