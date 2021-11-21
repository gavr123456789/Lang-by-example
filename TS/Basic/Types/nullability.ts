type NotNullableObject = {
  a: number
}

type NullableObject = NotNullableObject | null

function p(x: NotNullableObject) {
  console.log(x.a)
}

p(null)

let x: NullableObject = null

if (x === null) {
  p(x)
} else {
  p(x)
}