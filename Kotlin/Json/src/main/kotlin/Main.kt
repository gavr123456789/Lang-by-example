package org.example

import com.beust.klaxon.JsonObject
import com.beust.klaxon.Klaxon
import com.beust.klaxon.Parser

class Person(val name: String, val age: Int)

fun main() {
    // json to obj
    val result = Klaxon()
        .parse<Person>(
            """
    {
      "name": "John Smith",
      "age": 6
    }
    """
        )
    assert(result?.name == "John Smith")
    assert(result?.age == 23)

    //obj to json

    val person = Person("Alice", 32)
    val objToJson = Klaxon().toJsonString(person)
    println(objToJson)


    // low level
    val parser: Parser = Parser.default()
    val stringBuilder: StringBuilder = StringBuilder("{\"name\":\"Cedric Beust\", \"age\":23}")
    val json: JsonObject = parser.parse(stringBuilder) as JsonObject
    println("Name : ${json.string("name")}, Age : ${json.int("age")}")
}
