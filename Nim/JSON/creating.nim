import std/json

var name = "John"
let age = 31
var j = %*
  [
    { "name": name, "age": 30 },
    { "name": "Susan", "age": age }
  ]

var j2 = %* {"name": "Isaac", "books": ["Robot Dreams"]}
j2["details"] = %* {"age":35, "pi":3.1415}
echo j2