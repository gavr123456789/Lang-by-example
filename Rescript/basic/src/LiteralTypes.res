// the following constant can only store any integer from 1 to 3
let three: [ #1 | #2 | #3] = #3
let threeInt: int = three :> int

// Literal union type
type easing = [ #easeIn | #easeOut | #easeInOut ]

let someEasing : easing =  #easeIn
let someEasingString: string = someEasing :> string 