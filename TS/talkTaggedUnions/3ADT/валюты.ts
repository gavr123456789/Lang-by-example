type СurrencyType = "$" | "€" | "₽"
type Value = number

interface Сurrency {
  value: Value
  type: СurrencyType
}
