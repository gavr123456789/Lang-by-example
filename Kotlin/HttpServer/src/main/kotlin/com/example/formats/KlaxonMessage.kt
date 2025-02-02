package com.example.formats

import org.http4k.core.Body
import org.http4k.format.Klaxon.auto

data class KlaxonMessage(val subject: String, val message: String)

val klaxonMessageLens = Body.auto<KlaxonMessage>().toLens()
