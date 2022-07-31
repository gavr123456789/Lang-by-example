func sum(x, y: int): int =
  x + y

func minus(x, y: int): int =
  echo x  # error: 'minus' can have side effects
  x - y