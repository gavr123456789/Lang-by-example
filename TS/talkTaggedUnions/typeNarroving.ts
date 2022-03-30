type StrangeType = string[] | number

function checkType(x: StrangeType): boolean {
  if (Array.isArray(x)) {
    return true
  } else {
    return false
  }
}

function foo(x: StrangeType) {
  if (Array.isArray(x)) {
    const y = x
  } else {
    const y = x

  }

  if (checkType(x) === true) {
    const y = x // вывод типов не полный
  }
  
}