package OtherFeatures



sealed class Duck



sealed class User {
    class LoggedIn(val name: String) : User()
    class Guest() : User()
}

fun getNickName(x: User): Unit {
    when (x) {
        is User.Guest -> println("Sas")
        is User.LoggedIn -> {
            println(x.name)
        }
    }
}
