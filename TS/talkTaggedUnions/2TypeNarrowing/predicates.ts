interface Status200 {status: 200, data: string}
interface Status404 {status: 404}
interface Status301 {status: 301, to: string}
interface Status400 {status: 400, error: Error}

type Responses = 
  | Status200
  | Status404
  | Status301
  | Status400

function isResponseSuccess(x: Responses): x is Status200 {
  return x.status === 200
}


function processResponce(x: Responses) {
  if (isResponseSuccess(x)) {
    x.data
  }
}