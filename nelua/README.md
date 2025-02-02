https://nelua.io/  

# Install
linux  
`yay -S base-devel git gcc gdb`  
mac  
`brew install gcc gdb git make`  


`git clone https://github.com/edubart/nelua-lang.git && cd nelua-lang`  
`make`  

# Run
`nelua file.nelua`

# Highlight
Clone this repository into ~/.vscode/extensions/ and restart vscode.  
https://github.com/edubart/nelua-vscode  

# Examples

## Factorial
```lua
-- Calculates the factorial of a number.
local function factorial(n: integer): integer
  if n == 0 then
    return 1
  else
    return n * factorial(n - 1)
  end
end

local n = 5
local res = factorial(n)
print(n, 'factorial is', res)
```

## Loop
```lua
-- Sum numbers from 1 to 10.
local sum = 0
for i = 1, 10 do
  sum = sum + i
end
print('The sum is', sum)
```
## String
```lua
-- Print "hello world" manipulating strings.
require 'string'

local s1 = 'olleh'
local s2 = 'dlrow'

print(s1:reverse() .. ' ' .. s2:reverse())
```
## Record
```lua
-- Create and print a record data structure.
require 'string'
local Person = @record{
  name: string,
  age: integer
}
local person: Person = {name = "John", age = 20}
print(person.name, 'is', person.age, 'years old')
```

