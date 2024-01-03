// gleam run

import gleam/io

// 1 type declaration 
pub type Person {
  Person(name: String, age: Int)
}

pub type LoggedIn {
  Admin
  Moder
  Usual
  
}

// 2 tagged union declaration
pub type User {
  LoggedIn(name: String)
  Guest
}


// There are no top level expressions, main is needed
pub fn main() {
  // 3 hello world
  io.println("Hello world!")
  let admin = Admin
  let loggined = LoggedIn

  // admin.get_name()

  // 4 creating instance of type   
  let person = Person(name: "Bob", age: 42)
  person.age|>io.debug()

  // 5 call function
  let person = person|>have_birthday // same as have_birthday(person)
  io.debug(person)
}


// 7 create function for type
pub fn have_birthday(person: Person) -> Person {
  // 6 change instance field

  // All are immutable, so the only way to change field 
  // is to create new person from old with changes
  Person(..person, age: person.age + 1)
}

// Controll flow
// 8 loop
// There no loops in Gleam as in Erlang, use recursion for such things(with tail optimization ofc)

// 9 if
// There no if, the only control flow is case, 
// which can also do pattern matching
pub fn if_example(x: Bool) {
  case x {
    False -> io.debug("false")
    True -> io.debug("true")
  }
}

// 10 Switch
pub fn get_name(user) {
  case user {
    LoggedIn(name) -> name
    Guest -> "Guest user"
  }
}


// 11 list
pub fn list_example() {
  let list = [2, 3]
  // all are immutable, 
  // so you can add values to list only be creating new one
  // list are single linked, so prefer add new values to the head
  let list_with_new_value = [1, ..list]
  io.debug(list_with_new_value)
}


import gleam/map.{from_list, insert}

// 12 map
pub fn map_example() {
  let m = from_list([#("key1", "value1"), #("key2", "value2")])
  m|>insert("key3", "value3")
}

// 13 import from other file
import another_file
pub fn foo() {
  another_file.add(1, 2)
}

