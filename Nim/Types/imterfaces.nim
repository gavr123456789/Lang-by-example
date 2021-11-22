type
  Runner = concept x
    run(x)
  
  T1 = object
  T2 = object
  T3 = object
  
proc run(t: T1) =
  echo "run t1"

proc run(t: T2) =
  echo "run t2"
  
proc run(t: T3) =
  echo "run t3"
  
proc runall(tt: openarray[Runner]) =
  for t in tt:
    t.run()

proc runit(t: Runner) =
  t.run()
  
var
  t1 = T1()
  t2 = T2()
  t3 = T3()

# runall([t1, t2, t3])
runit(t1)
runit(t2)
runit(t3)