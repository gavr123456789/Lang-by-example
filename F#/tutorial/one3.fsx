open System
let prin a = printfn "%A" a

let x = "32"
let num = Int32.Parse(x)
prin num


let if' b t f = if b then t else f

let stringLength (x: string) = x.Length

