type
  Person = tuple
    name: string
    age: int
  # Alternative syntax for an equivalent type.
  PersonX = tuple[name: string, age: int]
  # anonymous field syntax
  PersonY = (string, int)

var
  person: Person = (name: "Peter", age: 30)
  personX: PersonX = person
  personY: PersonY = ("Peter", 30)

# Create a tuple with anonymous fields:
personY = ("Peter", 30)

# A tuple with anonymous fields is compatible with a tuple that not
person = personY
personY = person

# Usually used for short tuple initialization syntax
person = ("Peter", 30)

echo person.name # "Peter"
echo person.age  # 30

echo person[0] # "Peter"
echo person[1] # 30

# You don't need to declare tuples in a separate type section.
let building: tuple[street: string, number: int] = ("Rue del Percebe", 13)
echo building.street

# Error different tuples!
# person = building