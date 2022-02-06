import gleam/io
import control_flow

pub fn main() {
  control_flow.if_example(False)
  control_flow.switch_example("sas")
  io.println("Hello from lang_by_example!")
  control_flow.guess_game(42, 0, 100) |> io.debug
}
