class Animal {
  constructor(
    public name: string,
    public age: number
  ){}
  vocalize(): string { return "..." }
  ageHumanYrs(): number { return this.age }
}

class Dog extends Animal {
  vocalize(): string { return "woof" }
  ageHumanYrs(): number { return this.age * 7 }
}

class Cat extends Animal {
  vocalize(): string { return "meow" }
}

export function oopExample() {
  const animals: Animal[] = []
  animals.push(new Dog("Sparky", 10))
  animals.push(new Cat("Mitten", 10))

  for (const a of animals) {
    console.log(a.vocalize());
    console.log(a.ageHumanYrs());
  }

  console.log(animals[0] instanceof Dog);
  console.log(animals[0] instanceof Cat);
  console.log(animals[0] instanceof Animal);
}