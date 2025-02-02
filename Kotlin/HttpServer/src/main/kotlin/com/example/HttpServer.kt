package com.example

import com.beust.klaxon.Klaxon
import com.beust.klaxon.KlaxonJson
import com.example.formats.KlaxonMessage
import com.example.formats.klaxonMessageLens
import org.http4k.core.*
import org.http4k.core.Status.Companion.OK
//import org.http4k.core.Method.GET
//import org.http4k.core.Status.Companion.OK
import org.http4k.filter.DebuggingFilters.PrintRequest
import org.http4k.routing.bind
import org.http4k.routing.routes
import org.http4k.server.SunHttp
import org.http4k.server.asServer

class Person(val name: String, val age: Int)

val app: HttpHandler = routes(
    "/".bind(Method.GET) to {
        Response(OK).body("Hello from Kotlin!")
    },

    "/json".bind(Method.GET) to {
        val person = Person("Alice", 25)
        val json = Klaxon().toJsonString(person)

        Response(OK).body(json)
    },

    "/ping" bind Method.GET to {
        Response(OK).body("pong")
    },


    "/formats/json/moshi" bind Method.POST to {
        Response(OK).with(klaxonMessageLens of KlaxonMessage("Barry", "Hello there!"))
    }
)


@Suppress("ReplaceToWithInfixForm")
fun main() {

//    val r = arrayOf(
//        ("/ping".bind(GET)).to {
//            Response(OK).body("pong")
//        },
//
//        "/formats/json/moshi" bind GET to {
//            Response(OK).with(klaxonMessageLens of KlaxonMessage("Barry", "Hello there!"))
//        }
//    )
//
//    val q = routes(*r)

    val printingApp: HttpHandler = PrintRequest().then(app)

    val server = printingApp.asServer(SunHttp(9000)).start()

    println("Server started on " + server.port())
}
