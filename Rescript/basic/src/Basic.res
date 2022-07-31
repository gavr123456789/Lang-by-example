/*
git clone https://github.com/rescript-lang/rescript-project-template
cd rescript-project-template
npm install
npm run build
node src/Demo.bs.js
*/


// 1 type declaration 
// records are nominal typed, like in C#
type personRecord= {age: int, name: string}
// objects are structural typed, like in ts
type personObj = {"age": int, "name": string}


// 2 tagged union declaration
type user = 
  | LoggedIn({name: string})
  | Guest


// 3 hello world
Js.log("Hello world!")

// 4 creating instance of type
let bob = {name: "Bob", age: 42}


///7 create function for type
let haveBirthday = (person) => {
  // 6 change instance field

  // the only way to change field 
  // is to create new person from old with changes
  {...person, age: person.age + 1}
}

// func must be declarated before using
// 5 call function
let bob = bob->haveBirthday // haveBirthday(bob)


// 8 loop
for x in 1 to 3 {
  Js.log(x)
}
for x in 3 downto 1 {
  Js.log(x)
}

// 9 if 

if (false) {
  "false"->Js.log
}


// 10 Switch
let getName  = (user: user) => {
  switch user {
  | LoggedIn({name}) => Js.log(name)
  | Guest => Js.log("guest")
  }
}

// 11 
// arrays, just js arrays
let arr = [1, 2]
let pushedValue = Js.Array2.push(arr, 3)
// single linked list, fast prepending, slow all other
let myList = list{2, 3}
let anotherList = list{1, ...myList}

// 12 map
// https://dev.to/johnridesabike/bucklescript-belt-s-map-and-set-customizing-key-types-2cel
// not so easy, but you can choose what key of obj will be used for hash
// There are hardcoded map types form int and string keys
let hMap = Belt.HashMap.String.make(~hintSize=10)
Belt.HashMap.String.set(hMap, "key1", "a")

let hMap = Belt.HashMap.Int.make(~hintSize=10)
Belt.HashMap.Int.set(hMap, 1, "a")


// 13
// there no import statement
// each file is module
// so all files must have uniq names
// you can write `open Module` to not to write Module.smth every time
// or `open Module!` to hide warnings about shadowing
// or `let {log} = module(Js)`` to get concret things from modle
let x = AnotherFile.add(1, 2)