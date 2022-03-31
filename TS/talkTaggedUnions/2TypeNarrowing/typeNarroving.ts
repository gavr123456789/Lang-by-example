// type StrangeType = string[] | number

// function checkType(x: StrangeType): boolean {
//   if (Array.isArray(x)) {
//     return true
//   } else {
//     return false
//   }
// }

// function foo(x: StrangeType) {
//   if (Array.isArray(x)) {
//     const y = x
//   } else {
//     const y = x

//   }

//   if (checkType(x) === true) {
//     const y = x // вывод типов не полный
//   }
  
// }

const input: string | number = "sas"

// Примитивы
if (typeof input === "string") {
  input
}

// Классы
class Klass1 {x: string}
class Klass2 {}
const input2: Klass1 | Klass2 = new Klass1

if (input2 instanceof Klass1) {
  input2
}

// Через наличие полей
if ("x" in input2) {
  input2
}

