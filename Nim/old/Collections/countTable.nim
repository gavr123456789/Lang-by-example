import std/tables
let myString = "abracadabra"
let letterFrequencies = toCountTable(myString)
assert $letterFrequencies == "{'a': 5, 'd': 1, 'b': 2, 'r': 2, 'c': 1}"