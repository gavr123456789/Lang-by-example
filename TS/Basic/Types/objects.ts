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

import assert from 'assert/strict';

export function objectExample() {
  let carl: Animal = {
    name : "Carl",
    species : "L. glama",
    age : 12
  }
  
  const joe: Animal = {
    name : "Joe",
    species : "H. sapiens",
    age : 23
  }
  // No UFCS
  assert(!dead(carl))
  for (let i = 0; i < 10; i++) {
    sleep(carl)
  }
  // No value types, all objects are refs on heap
}

