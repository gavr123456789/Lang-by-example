# macro pipe(ast)
#   {% uast = ast.stringify.gsub(/ >>/, ".pipe").id %}
#   {% pp uast %}
   
#   {% if uast.stringify != ast.stringify %}
   
#   pipe {{uast}}
   
#   {% else %}
   
#   {% if ast.name.id == "pipe".id %}
#     {% if ast.args.first.receiver.is_a?(Nop) %}
#       {{ast.args.first.name}}({{ast.receiver}}, {{ast.args.first.args.argify}})
#     {% else %}
#       pipe {{ast.args.first.receiver.name}}({{ast.receiver}}, {{ast.args.first.receiver.args.argify}}).pipe {{ast.args.first.args.argify}}
#     {% end %}
#   {% else %}
#     {{ast}}
#   {% end %}
   
#   {% end %}
#   end
   
#   def add(a, b)
#     a + b
#   end
   
#   def mul(a, b)
#     a * b
#   end
   
#   x = pipe 3 .>> add(5) .>> mul(3) .>> mul(7) .>> add(-1)
#   pp x


require "cr_chainable_methods"

module Foo
  def self.append_message(words, message)
    words + [message]
  end
end

module Bar
  def self.add_something(words)
    words + ["something"]
  end
end


result = pipe "Hello World"
  .>> split(" ")
  .>> Foo.append_message("from module")
  .>> Bar.add_something
  .>> ->(l : Array(String)){ l + ["from block"] }.call
  .>> join(" - ")
  .>> unwrap