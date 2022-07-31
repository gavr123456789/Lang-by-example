proc sas(arr: static seq[int]) =
  static: assert arr.len > 0
  echo array

echo "runtime"
sas @[]
