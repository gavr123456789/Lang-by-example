// swift run


// 1 type declaration 
struct Person {
  var name: String
  var age: Int

  // if self mutate, need special modifier
  mutating func haveBirthday() {
    self.age += 1
  }
}

struct LoggedIn {
  var name: String
}

// 2 tagged union declaration
enum User {
  case LoggedIn(LoggedIn)
  case Guest

  // 10 Switch
  func getName() -> String {
    switch self {
    case let .LoggedIn(loggedIn):
      return loggedIn.name
    case .Guest:
      return "guest"
    }
  }
}

var x: User = User.LoggedIn(LoggedIn(name: "sas"))
print(x.getName())

// 3 hello world
print("Hello, world!")

// 4 creating instance of type   
//mutating function can be called only on var
var person = Person(name: "sas", age: 42)
person.haveBirthday()

// 8 loop
for i in 1...10 {
  // print(i)
}

// 9 if
if (true) {
  print(true)
}

// 11 list
var list = [2, 3]
list.append(4)

// 12 map
var map = ["a" : 1, "b" : 2]
map["c"] = 3
print(map["a"])
