type
  # type representing a person:
  # A person consists of a name and an age.
  Person = tuple
    name: string
    age: int
  
  # Alternative syntax for an equivalent type.
  PersonX = tuple[name: string, age: int]
  
  # anonymous field syntax
  PersonY = (string, int)

var
  person: Person
  personX: PersonX
  personY: PersonY

person = (name: "Peter", age: 30)
# Person and PersonX are equivalent
personX = person

# Create a tuple with anonymous fields:
personY = ("Peter", 30)

# A tuple with anonymous fields is compatible with a tuple that has
# field names
person = personY
personY = person

# Usually used for short tuple initialization syntax
person = ("Peter", 30)

echo person.name # "Peter"
echo person.age  # 30

echo person[0] # "Peter"
echo person[1] # 30

# You don't need to declare tuples in a separate type section.
var building: tuple[street: string, number: int]
building = ("Rue del Percebe", 13)
echo building.street

# The following line does not compile, they are different tuples!
# person = building
# --> Error: type mismatch: got (tuple[street: string, number: int])
#     but expected 'Person'