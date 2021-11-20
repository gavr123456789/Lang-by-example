# This will read the entire file into the string entireFile
let entireFile = readFile("reading.nim")
echo entireFile  # prints the entire file


proc readCode() =
  let f = open("reading.nim")
  # Close the file object when you are done with it
  defer: f.close()

  let firstLine = f.readLine()
  echo firstLine

readCode()