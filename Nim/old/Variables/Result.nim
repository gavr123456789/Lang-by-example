proc getAlphabet(): string =
  for letter in 'a'..'z':
    result.add(letter)

proc unexpected(): int =
  var result = 5
  result += 5

echo unexpected()  

# last expression returns

func return42(): int =
  42

echo return42()  
