class Person
  @age = 0

  def initialize(@name : String)
  end

  def age
    @age
  end

  def become_older
    @age += 1
  end
end

john = Person.new "john"

john.become_older
joh
puts john.age