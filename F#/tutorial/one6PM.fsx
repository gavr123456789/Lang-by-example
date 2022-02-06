open System
let prin a = printfn "%A" a

type Figure = 
  | Circle of float
  | Square of float
  | Rectangle of float * float

let circle = Circle 5.5
let square = Square 5.5
let rectangle = Rectangle (11.2, 5.5)

let area figure = 
  match figure with 
    | Square side -> side * side
    | Circle side -> side * side
    | Rectangle (side, gfgf) -> side * side
  

Square 5 |> area |> prin