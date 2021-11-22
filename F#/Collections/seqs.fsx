


let a = [1; 2; 3]
let mutable b = a |> List.map (fun x -> x*x) 
let c = a |> List.filter (fun x -> x % 2 = 0)

// iterate elem and index
// ?


for i in 4 .. 10 do 
  b <- i * i :: b // no add func, but head :: tail operator

printfn $"b = {b}"

// Sum of lists
let sumList = a @ b
printfn "%A" sumList // %A print all elems

// remove item
// F# lists are singly-linked lists
let rec remove i l =
    match i, l with
    | 0, x::xs -> xs // detauch head if removing first
    | i, x::xs -> x::remove (i - 1) xs // recursive call without first
    | i, [] -> failwith "index out of range"

b |> remove 0 // takes O(n^2) in worst
b <- a[0] :: b
// use list when need adding, use arrays for editing indexed elems


// Immutability

let d = [1; 2; 3]
d <- 4 :: d // ERROR