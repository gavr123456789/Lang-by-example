import std/tables
let
  a = [('z', 1), ('y', 2), ('x', 3)]
  ot = a.toOrderedTable  # ordered tables

assert $ot == """{'z': 1, 'y': 2, 'x': 3}"""