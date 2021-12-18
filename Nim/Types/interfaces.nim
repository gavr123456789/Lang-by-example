### Example 1

type Geometry = concept x
  x.area is float
  x.perim is float

type Rect = object
  width, height: float
type Circle = object
  radius: float

func area(r: Rect): float =
  return r.width * r.height

func perim(r: Rect): float =
  return 2 * r.width + 2 * r.height

func area(c: Circle): float =
  return c.radius * c.radius * 3.14

func perim(c: Circle): float =
  return 2 * 3.14 * c.radius


func measure (g: Geometry) = 
  debugEcho g
  debugEcho g.area
  debugEcho g.perim

let r = Rect(width: 3, height: 4)
let c = Circle(radius: 4)

measure r
measure c



### Example 2
type
  Runner = concept x
    run(x)
  
  T1 = object
  T2 = object
  
proc run(t: T1) =
  echo "run t1"

proc run(t: T2) =
  echo "run t2"
  

  
proc runall(tt: openarray[Runner]) =
  for t in tt:
    t.run()

proc runit(t: Runner) =
  t.run()
  
var
  t1 = T1()
  t2 = T2()

# runall([t1, t2])
runit(t1)
runit(t2)