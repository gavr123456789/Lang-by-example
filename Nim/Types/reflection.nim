type B = object
  money: uint

type A = object
  id: int
  name: string
  something: B

let a = A(id: 42, name: "sas", something: B(money: 4000))

for name, value in a.fieldPairs:
  echo name, " ", value