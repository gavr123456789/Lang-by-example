type Result<'a, 'b> = 
  | Success of 'a
  | Error of 'b

let divideTenBy a = 
  if a <> 0 then
    Success (10 / a)
  else 
    Error "SAS"

let prin a = printfn "%A" a

prin (divideTenBy 2)
prin (divideTenBy 0)