


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


// Immutability

let d = [1; 2; 3]
// d <- 4 :: d // ERROR