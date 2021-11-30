open class OrderMessage private constructor() {
    class New(val id: Int, val quantity: Int) : OrderMessage()
    class Cancel(val id: Int) : OrderMessage()
}

class Sas{}

fun sas(x: OrderMessage) {
    when (x) {
        is OrderMessage.New -> println("new $x.id: $x.quantity")
        is OrderMessage.Cancel -> println("cancel $x.id")
        is Sas -> println(0)
    }
}

fun main(args: Array<String>) {
    println("Hello World!")

    // Try adding program arguments via Run/Debug configuration.
    // Learn more about running applications: https://www.jetbrains.com/help/idea/running-applications.html.
    println("Program arguments: ${args.joinToString()}")
}