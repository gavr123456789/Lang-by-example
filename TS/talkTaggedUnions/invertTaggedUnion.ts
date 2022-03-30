function newX(data: number) {
  return {
    kind: "X" as const,
    data
  }
}

function newY(data: number) {
  return {
    kind: "Y" as const,
    data2: data
  }
}


type Union2 = ReturnType<typeof newX> | ReturnType<typeof newY>


function sas2(x:Union2) {
  if (x.kind === "X") {
    
  } else {
    x.data2
  }
}


const qwe = newY(4)
const qwe2 = newX(4)