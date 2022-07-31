
// 1 type declaration 
type Person = { Name : string; Age : int }

// 2 tagged union declaration
type User = 
  | LoggedIn of Name: string
  | Guest

// 3 Helo world
printfn "Hello World!"

// 4 creating instance of type   
let bob = { Name = "Bob"; Age = 28 }

// 7 create function for type
let haveBirthday person = 
  // 6 change instance field
  {person with Age = person.Age + 1}

// mutable fields are possible
type PersonWithMutName = 
 { mutable Name: string
   Age: int }
let mutableBob = { Name = "Bob"; Age = 42 }
mutableBob.Name = "Alica"

// func must be declarated before using
// 5 call function
bob|>haveBirthday // same as haveBirthday(bob) or haveBirthday bob

// 8 loop
for i = 1 to 10 do 
  printf "%i" i

for i = 10 downto 1 do 
  printf "%i" i

// 9 if
let sign num = 
  if num > 0 then "foo"
  elif num < 0 then "bar"
  else "42"

// 10 Switch
let getName user =
  match user with
  | LoggedIn name -> name
  | Guest -> "Guest user"



// 11 list
let list1 = [ "a"; "b" ]
let list2 = "c" :: list1
// concat
let list3 = list1 @ list2   
// recursion on list using (::) operator
let rec sum list = 
    match list with
    | [] -> 0
    | x :: xs -> x + sum xs

// array (System.Array from C#)
let arr = [| 1; 2 |]
// you cant add to Array, it has static lenth, but you can create new arrays frnomold
let arrWithNewItem = arr|>Array.append [| 3 |] // 1, 2, 3

// indexed access using dot
let first = arr.[0]
let strangeButWhyNot = [| for i in 1 .. 10 -> i * i |]
let bothArrays = arr|>Array.append strangeButWhyNot


// filter
printfn "%A" (Array.filter (fun elem -> elem % 2 = 0) [| 1 .. 10 |])

// you can also create a mutable array, to avoid creating new arrays for new elements
// Other 2 ML languages: Gleam and Rescrpt just allows you to shadow previous declaration instead of `mutable`
let mutable mutableArray = [| 1; 2 |]
mutableArray <- mutableArray|>Array.append [| 3 |] // `<-` for assign to mutable values


// 12 map
let map = Map [ (1, "a"); (2, "b") ]
map.Add((3, "c")) // its tuple
(4, "d")|>map.Add

// 13
// #load "Add.fsx"
// open Add
// let sum = Add.add 1 2