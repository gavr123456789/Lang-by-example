// The file extension is scala for the sake of syntax highlighting

// 1 type declaration
type Person name: String age: Int

// 2 tagged union declaration
union User =
| LoggedIn name: String
| Guest

// 3 hello world
"Hello World!" echo

// 4 creating instance of type
person = Person name: "sas" age: 6

// 5 call function
person haveBirthday

// 7 create function for type
// 6 change instance field
// yes, assign can be used as expression here
Person haveBirthday = age <- age + 1


// 8 loop
1 to: 3 do: [ it echo ]
// 9 if
| true => "true" echo

// 10 switch

// smart casted inside branches 
User getName = | this
| Guest => "Guest" echo
| LoggedIn => this name 

// 11 list
list = {1 2 3}
list add: 4
// 1a 2a 3a 4a
mappedList = list map: [it toString + "a"]

// map 
map = #{1 "a" 2 "b"}
map key: 3 value: "c"
// "a"
a = map get: 1
| a != null => a echo