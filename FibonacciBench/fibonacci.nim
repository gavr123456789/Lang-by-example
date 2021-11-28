# nim c -d=danger --gc:arc --hints:off
proc fibonacci(n: int): int = 
  if n <= 1:
    return n
  return fibonacci(n - 1) + fibonacci(n - 2)

echo fibonacci 40