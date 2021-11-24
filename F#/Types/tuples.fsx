// anonymous
let twoTuple = 1, 2
let threeTuple = "a", 2, true

// named
type Person =  {name: string; age: int}
type PersonX = {name: string; age: int}
type PersonY = string * int


let person = {name = "Peter"; age = 30}
let mutable personX = {name = "Peter"; age = 30}
let mutable personY = "Peter", 30

personY <- "Peter", 30
// Tuples do not give structural typing 
// personX <- personY // ERROR

// personX and personY are different types here
// PersonY: string * int, PersonX: PersonX
// You cant init personX with short not named syntax
// personX = "Peter", 30 // ERROR

printf $"{person.name}"
printf $"{person.age}"

// I cant find a way to create named tuple without type declaration
// let building = {street = "qwe"} ERROR