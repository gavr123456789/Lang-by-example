import fidget

proc drawMain() =
  frame "main":
    box 0, 0, 620, 140
    for i in 0 .. 4:
      group "block":
        box 20 + i * 120, 20, 100, 100
        fill "#2B9FEA"

startFidget(drawMain, w = 620, h = 140)


func add(a, b: int): int = a + b

let x = add(1, 2)
let y = 1.add 2
let z = 1.add(2).add(3)


# type A = B
# type B = A

let t = 32.string
