import std/json

let jsonNode = parseJson("""{"key": 3.14, "key2": null}""")
# getFloat == get Float, if there no such thing then use argument
doAssert jsonNode["key"].getFloat(6.28) == 3.14
doAssert jsonNode["key2"].getFloat(3.14) == 3.14
# Traverses the node and tries to set the value at the given location to value. If any of the keys are missing, they are added
doAssert jsonNode{"nope"}.getFloat(3.14) == 3.14 # note the {}