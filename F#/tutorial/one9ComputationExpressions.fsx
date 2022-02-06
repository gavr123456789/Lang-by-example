let squares =
    seq {
        for i in 1..10 do
            yield i * i
    }

for sq in squares do
    printfn $"%d{sq}"

//In most cases, it can be omitted by callers. The most common way to omit yield is with the -> operator:
let squares2 =
    seq {
        for i in 1..10 -> i * i
    }

for sq in squares2 do
    printfn $"%d{sq}"

// seq
let weekdays includeWeekend =
    seq {
        "Monday"
        "Tuesday"
        "Wednesday"
        "Thursday"
        "Friday"
        if includeWeekend then
            "Saturday"
            "Sunday"
    }

//return
let req = // 'req' is of type 'Async<data>'
    async {
        let! data = fetch url
        return data
    }

// 'result' is of type 'data'
let result = Async.RunSynchronously req

// return!

let req = // 'req' is of type 'Async<data>'
    async {
        return! fetch url
    }

// 'result' is of type 'data'
let result = Async.RunSynchronously req

// match 
let doThingsAsync url =
    async {
        match! callService url with
        | Some data -> ...
        | None -> ...
    }