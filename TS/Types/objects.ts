type Animal = {
  name: string
  species: string
  age: number
}

function sleep(a: Animal) {
  return a.age += 1
}

function dead(a: Animal): boolean {
  return a.age > 20
}

let carl: Animal = {
  name : "Joe",
  species : "H. sapiens",
  age : 23
}