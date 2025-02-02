# About
Its typed Smalltalk where I replaced OOP with tagged unions. JVM interopable.  
Also better control of nullable and errors on the type level.
[niva site](https://gavr123456789.github.io/niva-site)  
https://github.com/gavr123456789/Niva  
# Install
`git clone https://github.com/gavr123456789/Niva.git` 

`./gradlew buildJvmNiva`  
(will take approximately 1.30 min)

# Use 
* create main.niva  
* put `"hello" echo` in it  
* run `niva run`

# LSP
https://github.com/gavr123456789/niva-vscode-bundle  

# Examples
## Factorial
```Scala
// Calculates the factorial of a number
Int factorial -> Int = |this
| 0 => 1
|=> (this - 1) factorial * this

5 factorial echo
```

## Loop
```Scala
1..10 forEach: [
  it echo
]
```
`..` is not a special syntax but a binary message for `Int` that returns an `IntRange`.  
`IntRange` has a `forEach:` message that takes a code block as an argument.

## String
```Scala
// Print "hello world" manipulating strings.
s1 = "olleh"
s2 = "dlrow"
s1 reversed + s2 reversed, echo
```
`(1 + 2) echo` is the same as `1 + 2, echo`

## Type
```Scala
// Create and print a record data structure.
type Person name: String age: Int

bob = Person name: "bob" age: 20
bob echo
```
  
More examples: https://github.com/gavr123456789/bazar/tree/main/Bindings