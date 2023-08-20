// 1 type declaration
class Person(val name: String, var age: Int)  {
    // 7 create function for type
    fun haveBirthday() {
        // 6 change instance field
        this.age += 1
  }
}

// 2 tagged union declaration
sealed class User {
    class LoggedIn(val name: String) : User()
    class Guest() : User()
}


// There are no top level expressions, main is needed
fun main(args: Array<String>) {
    // 3 hello world
    println("Hello World!")

    // 4 creating instance of type
    val person = Person(name = "Bob", age = 42)

    // 5 call function
    person.haveBirthday()
}

fun controlFlow(){
    // 8 loop
    for (i in 1..10) {
        println(i)
    }
    // 9 if
    if (true) {
        print("true")
    }
}

// 10 Switch
fun switch(user: User) {
    when (user) {
        is User.Guest -> println("Guest")
        is User.LoggedIn -> println(user.name)
    }
}

// 11 list
fun collections() {
    val list = mutableListOf(2, 3)
    list.add(4)

    // 12 map
    val map = mutableMapOf(1 to "a", 2 to "b")
    map[3] = "c"
    val d = map[4]
    if (d != null) {
        println(d) // Smart cast to not null
    }
}

