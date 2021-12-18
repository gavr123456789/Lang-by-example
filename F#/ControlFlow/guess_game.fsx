open System
// There are no 'break' in F# loops

let answer = (new Random()).Next(1, 100)
printfn "Guess the number between 1 and 100" 

let rec dummyWhileTrue() = 
  let guess = Int32.Parse(Console.ReadLine()) 
  if guess = answer then 
    printfn "Correct! You win!"
  elif guess < answer then 
    printfn "Too low, try again"
    dummyWhileTrue() 
  else
    printfn "Too high, try again"
    dummyWhileTrue() 
dummyWhileTrue() 
