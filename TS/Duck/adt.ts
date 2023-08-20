function newWolf() {
  return {
    kind: "Wolf" as const,
    dance: () => " ¯\\_()_/¯ ",
    quack: () => "QUACK QUACK WHOO",
    eat: (duck) => " 😈 "
  }
}

function newMallard() {
  return {
    kind: "Mallard" as const,
    dance: () => " _/¯ ",
    quack: () =>  "quack quack"
  }
}

type Duck = 
| ReturnType<typeof newWolf> 
| ReturnType<typeof newMallard> 

function twoDucksAlone(d1: Duck, d2: Duck) {
  console.log(d1.quack())
  console.log(d2.quack())

  console.log(d1.dance())
  console.log(d2.dance())
}

const wolf = newWolf()
const theDuck: Duck = wolf // Not mandatory
const aDuck: Duck = newMallard()
twoDucksAlone(aDuck, theDuck)
console.log(wolf.eat(aDuck))





// function sas(x: Duck) {
//   if (x.kind === "Wolf") {
//     x.
//   }
  
// }