open System

let sign num = 
  if num > 0 then "sas"
  elif num < 0 then "sos"
  else "343"

let main = 
  Console.WriteLine("sas {0}", (sign -1))