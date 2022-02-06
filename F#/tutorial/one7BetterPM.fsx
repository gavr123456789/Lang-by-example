let prin a = printfn "%A" a


let listMatcher aList = 
  match aList with 
    | [] -> prin "empty list"
    | [first] -> prin $"list with 1 element: {first}"
    | [first; second] -> prin $"list with 2 element: {first}, {second}"
    | _ -> prin "idk"
