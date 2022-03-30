interface Square {
  kind: "square";
  size: number;
}

interface Rectangle {
  kind: "rectangle";
  width: number;
  height: number;
}

type Shape = Square | Rectangle





interface A {
  kind: "A",
  data1: number
}


interface B {
  kind: "B",
  data2: string
}

interface C {
  kind: "C",
  data2: string
}

type Union = A | B 


function sas(x:Union) {
  switch (x.kind) {
    case "A":
      // x.
      break;
    case "B":
      x.data2
      break;
    
    default:
      const __x: never = x
      break;
  }
}

const qwewe: B = {kind: "B", data2: "asd"}