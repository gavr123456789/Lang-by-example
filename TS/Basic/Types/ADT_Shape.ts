interface Rectangle{
  kind: "Rectangle"
  length: number
  width: number
}
interface Circle{
  kind: "Circle"
  radius: number
}
interface Prism{
  kind: "Prism"
  width: number
  length: number
  heigth: number
}

interface Sas{
  kind: "Sas"
  width: number
  length: number
  heigth: boolean
}

type Shape = Rectangle | Circle | Prism



class NeverError extends Error {
  constructor(value: never) {
      super(`Unreachable statement: ${value}`);
  }
}

function getShapeWidth(shape: Shape): number {
  switch (shape.kind) {
    case "Circle": 
      return shape.radius * 2
    case "Prism":
      return shape.width
    case "Rectangle": 
      return shape.width
    default: 
      throw new NeverError(shape);

  }
}

let rect: Rectangle = {kind: "Rectangle", length: 1.0, width: 2.0} 
let circle: Circle = {kind: "Circle", radius: 1.0} 
let prism: Prism = {kind: "Prism", length: 1.0, width: 2.0, heigth: 2.0} 

let width = getShapeWidth(rect)



