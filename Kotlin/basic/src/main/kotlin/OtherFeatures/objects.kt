package OtherFeatures

object justSingleton {
    var x = "sas"
}

interface Coordinates {

    val x: Int
    val y: Int
    val z: Int
}

fun sas(x: Coordinates) {}

fun sas() {
    val coordinates = object: Coordinates {
        override val x = 1
        override val y = 2
        override val z = 3
    }
    sas(coordinates)
    justSingleton.x = "j"
}