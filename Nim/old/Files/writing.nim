let text = "Cats are very cool!"
writeFile("cats.txt", text)


proc writeCatActivities() =
  let lines = ["Play", "Eat", "Sleep"]
  # The fmWrite constant specifies that we are opening the file for writing.
  let f = open("catactivities.txt", fmWrite)
  defer: f.close()

  for line in lines:
    f.writeLine(line)

writeCatActivities()