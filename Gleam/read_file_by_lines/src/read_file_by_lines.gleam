import gleam/int
import gleam/io
import gleam/list
import gleam/string
import simplifile.{read}

pub type DayAndTemp {
  DayAndTemp(day: String, temp: Int)
}

pub fn main() {
  let filepath = "file.txt"
  let assert Ok(content) = read(from: filepath)
  let lines = string.split(content, on: "\n")
  lines |> io.debug
  
  let days_and_temps =
    lines
    |> list.map(fn(it) {
      let day_and_temp = it |> string.split(":")
      case day_and_temp {
        [day, temp] -> {
          let assert Ok(temp_int) = temp |> string.trim |> int.parse
          DayAndTemp(day: day, temp: temp_int)
        }

        _other -> panic as "Cant parse day and temp, separator is :"
      }
    })

  let temp_sum =
    days_and_temps
    |> list.fold(0, fn(accum, day_and_temp) { day_and_temp.temp + accum })

  let temp_average = temp_sum / { days_and_temps |> list.length }
  temp_average |> io.debug
}
