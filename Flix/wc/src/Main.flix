// 1 type declaration
type alias Person = { name = String, age = Int32 }
// 2 tagged union declaration
enum User {
    case Guest,
    case LoggedIn (String)
}

// 10 switch
def getName(a: User): String = match a {
    case User.Guest        => "Welcome!"
    case User.LoggedIn(name)     => "Welcome ${name}"
}

// 7 create function for type
def haveBirthday(person: Person): Person =
    {age = person#age + 1 | person} // 6 change instance's field

/// mutation version
struct Personn [r]  {
    name: String,
    mut age: Int32,
    mut height: Int32
} 

// the fields of the struct can be accessed only from "companion" module
mod Personn {
    pub def birthday(p: Personn[r]): Unit \ r =
        p->age = p->age + 1;
        if(p->age < 18) {
            p->height = p->height + 10
        } else {
            ()
        }
    pub def toString(p: Personn[r]): String \ r = 
        p->name
}


def main(): Unit \ IO = 
    // 3 hello world
    println("Hello World!");
    // 4 creating instance of type
    let person = { name = "Alice", age = 32 };
    let _olderPerson = person |> haveBirthday;
    region rc {
        let mutPerson = new Personn @ rc { name = "Lucky Luke", age = 30, height = 185 };
        println(mutPerson |> Personn.toString)
    };

    ()