type OrderId = OrderId of int
type SasId = SasId of int

let printOrderId (OrderId order) = 
  printfn "hghg %i", order

let x = OrderId 5

// printOrderId 4
printOrderId x