import iface

iface Animal: # Define the interface
  proc say(): string

type
  Dog = ref object of RootRef # The Dog doesn't explicitly inherit Animal

proc say(d: Dog): string = "bark" # But it implements Animal interface by defining its procs
proc doSmth(a: Animal): string = a.say() # Here we're working with an animal
assert(doSmth(Dog()) == "bark") # Since Dog implements Animal it can be converted implcitly

