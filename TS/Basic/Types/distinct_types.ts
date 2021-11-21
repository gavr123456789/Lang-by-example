type Distinct<T, DistinctName> = T & { __TYPE__: DistinctName }

type Dollars = Distinct<number, "Dollars">
type Rubles = Distinct<number, "Rubles">

let a = 25 as Dollars 
let b = 20 as Dollars 
let c = 20 as Rubles 

// no custom operstors
function add(a: Dollars, b: Dollars) { return a + b }
function mul(a: Dollars, b: Dollars) { return a * b }

let d = add(a, b)
let e = mul(add(a, b), c)
