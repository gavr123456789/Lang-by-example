package OtherFeatures

interface Lock {
    fun lock() {}
    fun unlock() {}
}

inline fun <T: Lock> lock(x: T, body: () -> Unit): T {
    x.lock()
    try {
        body()
    } finally {
        x.unlock()
    }
    return x
}

fun main(): Unit {
    val lockObj = object : Lock {
        override fun unlock() {
            println("unlocked")
        }
        override fun lock() {
            println("locked")
        }
    }
    lock(lockObj) {
        println("my custom code is running")
    }
}