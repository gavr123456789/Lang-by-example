app [main] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.17.0/lZFLstMUCUvd5bjnnpYromZJXkQUrdhbva4xdBInicE.tar.br" }

import pf.Stdout
# importing different module
import Hello exposing [hello]


# 1 type declaration
Person : { 
    name : Str,
    age : I32 
}

# 2 tagged union
User : [
    LoggedIn {name: Str}, 
    Guest
]

# 7 create function for type
# there is no way to actually mutate field
# explicit
haveBirthday = \person -> 
    {name: person.name, age: person.age + 1}
# syntax sugar
haveBirthday2 = \person ->
    {person & age: person.age + 1 }

main2 : I32 -> I32
main2 = \x -> 
    # hello defined in another module
    dbg (hello "World")
    # 4 creating instance of type
    person : Person
    person = {name: "Alice", age: 24}
    
    # 5 call function
    dbg (person.age |> Num.toStr)
    range = List.range {start: At 43, end: At 76}
    
    pf = walklist range
    x
    
main =
    main2 0
    
    
    # List.forEach! range \it ->
    #     dbg it
    # Stdout.line! (hello "World")    
    #Stdout.line! (hello "World")    
    #Stdout.line! (hello "World")    
    #Stdout.line! (hello "World")

walklist = \range ->
    1 + 1
    List.walk range 0 \_, elem -> 
        dbg elem
        