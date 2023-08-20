package OtherFeatures

class Sas {
    companion object {
        var definitelyNotStatic = "sas"
    }
}

fun main() {
    println(Sas.definitelyNotStatic)
    Sas.definitelyNotStatic = "qwe"
    println(Sas.definitelyNotStatic)
}