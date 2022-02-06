import gleam/io
import gleam/int
import gleam/string
import gleam/erlang.{get_line}


pub fn if_example(x: Bool) -> Nil {
  case x {
    False -> io.debug("false")
    True -> io.debug("true")
  }
  Nil
}

pub fn switch_example(x: String) -> Nil {
  case x {
    "sas" -> io.debug("false")
    "uiu" -> io.debug("true")
    n -> io.debug(n)
  }
  Nil
}


pub fn guess_game(answer num, lower low, upper upp) {
  assert Ok(line_with_nl) = get_line("Your guess: ")
  assert Ok(answer) = line_with_nl |> string.trim |> int.parse
  case answer {
    ans if ans == num -> {io.debug("You win!"); ans}
    ans if ans > num -> {io.debug("Too high, try again"); guess_game(num, ans, upp)}
    ans if ans < num -> {io.debug("Too low, try again"); guess_game(num, low, ans)}
  }
}