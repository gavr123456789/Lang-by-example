interface NotAsked {
  kind: "NotAsked"
  sideLength: number
}
interface Loading {
  kind: "Loading"
}
interface Success<T> {
  kind: "Success"
  result: T
}
interface Fail {
  kind: "Fail"
  error: string
}
type RemoteData<T> = NotAsked | Loading | Success<T> | Fail;


function foo(x: RemoteData<number>) {
  switch (x.kind) {
    case "NotAsked":
      break;

    case "Loading": {
      break;
    }
    case "Fail":
      console.log(x.error) 

      break;
    case "Success":
      console.log(x.result)
      break;
  }
}