package OtherFeatures


data class Port(var value: Int = 0, var isSecure: Boolean = false) {
    operator fun invoke(f: Port.() -> Unit) = f()
}
data class Configuration(var host: String = "", var port: Port = Port()) {
    operator fun invoke(f: Configuration.() -> Unit) = f()
}

fun main() {
    val config = Configuration()

    config {
        host = "127.0.0.1"
        port {
            value = 1111
            isSecure = true
        }
    }

    println(config)

}


