// Bad example
interface IRemoteData<T> {
  result?: T
  error?: string
  isLoading: boolean
  isLoaded: boolean
}

// Same on OOP

abstract class RemoteDataOOP<T> {
  // private constructor(){}
  // ??? нет ничего общего
}

class FailOOP<T> extends RemoteDataOOP<T> {
  constructor(public error: string) {
    super()
  }
}
class SuccessOOP<T> extends RemoteDataOOP<T> {
  constructor(public result: T) {
    super()
  }
}
class LoadingOOP<T> extends RemoteDataOOP<T> {

}
class NotAskedOOP<T> extends RemoteDataOOP<T> {

}

class RandomClass{}

function fooOOP(x:  RemoteDataOOP<string>) {
  if (x instanceof LoadingOOP) {
    console.log("loading");
  } else if (x instanceof NotAskedOOP) {
    console.log("not Asked");
  } else if (x instanceof FailOOP) {
    console.log("failed with error: ", x.error);
  } else if (x instanceof SuccessOOP /*&& typeof x.result === "number"*/) {
    console.log("result = : ", x.result);// any!
    processResult(x.result)
  } else if (x instanceof RandomClass){

  }
  // switch (x instanceof ) {
    
  // }
}





// ADT
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
      processResult(x.result)
      break;
  }
}

function processResult(result: number) {
  
}

