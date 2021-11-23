


export function firsClassFunctionsExampe() {
  let powersOfTwo = [1, 2, 4, 8, 16, 32, 64, 128, 256]
  console.log(powersOfTwo.filter(x => x > 32));

  const greaterThan32 = (x: number): boolean => {
    return x > 32
  }
  
  console.log(powersOfTwo.filter(greaterThan32));
  
}