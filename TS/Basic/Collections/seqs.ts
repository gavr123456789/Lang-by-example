
export function seqsExample() {
  const a = [1, 2, 3]
  let b = a.map(x => x * x)
  const c = a.filter(x => x % 2 === 0)


  // iterate elem and index
  a.forEach((v, i) => {
    b[i] = v * v
  })

  for (let i = 4; i <= 10; i++) {
    b.push(i * i)    
  }

  console.log("b = ", b);

  // Sum of lists
  const sumList = a.concat(b) // or 
  const sumList2 = [...a, ...b]
  console.log(sumList)

  // remove item
  a.splice(0, 1)
  b = [a[0], ...b]
  
  // there no immutability
}
