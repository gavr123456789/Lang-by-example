
module Narrowing {
  type NotNullableObject = {
    a: number
  }
  
  function p(x: NotNullableObject) {
    console.log(x.a)
  }
  
  p(null)
  
  
  type NullableObject = NotNullableObject | null
  
  let x: NullableObject = null
  
  if (x === null) {
    p(x)
  } else {
    p(x) // Narrowed
  }
  
  type NumOrStr = number | string
  
  function bar(x: NumOrStr) {
    if (typeof x === "number") {
      return x / 5 // Narrowed
    }
    return x / 5
  }
  
  
}
