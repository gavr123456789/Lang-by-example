class Object
  def with
    with self yield
  end
end
 
class Foo
  def one
    p 1
  end
  
  def two
    p 2
  end
end
 
class Bar
 def one
    p "one"
  end
  
  def two
    p "two"
  end 
end
 
Foo.new.with do
  one
  two
end
 
Bar.new.with do
  one
  two
end
 