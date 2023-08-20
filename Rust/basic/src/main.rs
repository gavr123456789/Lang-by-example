// 1 type declaration
// we need put that thing to make struct printable
#[derive(Debug)]
struct Person {
    name: String,
    age: u8,
}

// 2 tagged union declaration
enum User {
    LoggedIn{name: String},
    Guest
}

// 7 create a function for type
// trait is an interface for unknown type Self
// one trait can have many implementations
trait Birthday {
    fn have_birthday(&mut self);
}
impl Birthday for Person {
    fn have_birthday(&mut self) {
        self.age += 1;
    }
}

fn main() {
    // 3 Hello world
    println!("Hello, world!");
    // 4 creating instance of type
    let mut bob = Person {name: String::from("Bob"), age: 23};
    println!("{:?}", bob);
    // 5 call function
    loop_example();
    sign(23);
    get_name(User::LoggedIn { name: String::from("sas") });

    bob.have_birthday();

    // 11 Array
    let mut vector = vec![1i32, 2];
    vector.push(3);
    // 12 Map
    use std::collections::HashMap;
    let mut contacts = HashMap::new();
    contacts.insert("Daniel", "798-1364");
    let x = contacts["sas"];
    // runtime panic(and there no need to put "unsafe")
    println!("{}", x);
    match contacts.get(&"sas") {
        Some(&string) => print!("{}", string),
        None => println!("nothing there"),
    }

}

// 8 loop
fn loop_example() {
    for i in 1..10 {
        print!("{}, ", i)
    }
}

// 9 if
fn sign(num: i8) -> String {
    if num > 0 {
        String::from("foo")
    } else if num < 0 {
        String::from("bar")
    } else {
        String::from("42")
    }
}

// 10 Switch
fn get_name(user: User) -> String {
    match user {
        User::LoggedIn { name } => name,
        User::Guest => String::from("Guest"),
    }
}
