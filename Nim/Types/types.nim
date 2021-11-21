type
  MyInteger = int
  MyFunc = proc (): string

let a: int = 2
discard a + MyInteger(4)

let b: MyFunc = proc (): string = "Sas"
echo b()