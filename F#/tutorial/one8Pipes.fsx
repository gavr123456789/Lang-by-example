
let add (x: int) (y: string) = string x + y

let a = add 5, 7
let b = (5, "df") ||> add
let c = ("asd") |> add(6)
let z = add <| 4 <| "asd"

let flip f x y = f y x
let addFl  iped = flip add
let d = (5) |> addFliped("asd")


let wtf = 5 |> add <| "asd"



let printPerson name age =
    printf "My name is %s, I'm %i years old" name age

("Foo", 20) ||> printPerson