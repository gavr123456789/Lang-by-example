import prologue

proc hello(ctx: Context) {.async.} =
  resp "Hello from Nim!"

proc json(ctx: Context) {.async.} =
    resp jsonResponse(%* {"name": "Isaac", "books": ["Robot Dreams"]})

let app = newApp()
app.get("/hello", hello)
app.get("/json", json)
app.run()