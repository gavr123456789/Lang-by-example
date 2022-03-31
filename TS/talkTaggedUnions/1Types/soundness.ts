


let foo = (x: number, y: number) => {}
let bar = (x: number) => {}

foo = bar

// Сделано для лучшей совместимости с JS где очень много функций в которые мы отправляем только часть аргументов, например Array.foreach