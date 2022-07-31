echo "words words words ⚑"
# raw string
echo """
<html>
  <head>
  </head>\n\n

  <body>
  </body>
</html> """

# string proc, can be called like re"sas"
proc re(s: string): string = s

echo r".""."
echo re"sas"
# slices
echo "abc"[0]
echo "abcdefg"[0 .. 4]
echo "abcdefg"[0 .. ^2] # last element - 2


# string utils

import strutils

var a = "hello welcome,friend"

# The split proc takes a sequence of characters and splits a string based on them
echo a.split({' ', ','})

# The contains proc determines whether a string contains a substring or character
echo a.contains("hello")