Check basic folder

# create project with cli if possible
`gleam new project_name`
`gleam run`

### 1 type declaration 
```Gleam
pub type Person {
  Person(name: String, age: Int)
}
```

### 2 tagged union declaration 
```Gleam
pub type User {
  LoggedIn(name: String)
  Guest
}
```
### 3 hello world
```Gleam
io.println("Hello world!")
```
### 4 creating type instance
```Gleam
let person = Person(name: "Bob", age: 42)
```
### 5 call function
```Gleam
let person = person|>have_birthday // same as have_birthday(person)
```
### 6 change instance field
```Gleam
// All are immutable, so the only way to change field 
// is to create new person from old with changes
Person(..person, age: person.age + 1)
```


### 7 create function for type
```Gleam
pub fn have_birthday(person: Person) -> Person {
  Person(..person, age: person.age + 1)
}
```



# controll flow:
### 8 loop
`There no loops in Gleam as in Erlang, use recursion for such things`

### 9 if
```Gleam
// There no if, the only control flow is case, 
// which can also do pattern matching
case x {
  False -> io.debug("false")
  True -> io.debug("true")
}
```
### 10 switch (on tagged union if possible)
```Gleam
case user {
  LoggedIn(name) -> name
  Guest -> "Guest user"
}
```

### 11 create array
```Gleam
let list = [2, 3]
// all are immutable, 
// so you can add values to list only be creating new one
// list are single linked, so prefer add new values to the head
let list_with_new_value = [1, ..list]
```
### 12 create map
```Gleam
import gleam/map.{from_list, insert}

let m = from_list([#("key1", "value1"), #("key2", "value2")])
m|>insert("key3", "value3")
```

### 13 import from other file
```Gleam
import another_file
pub fn foo() {
  another_file.add(1, 2)
}
```