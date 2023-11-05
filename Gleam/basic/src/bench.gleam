import gleam/result
import gleam/list.{at}
import gleam/list.{at}
import gleam/int.{add}

pub type Op {
  Inc(v: Int)
  Move(v: Int)
  Loop(loop: List(Int))
  Print
}

pub type Tape {
  Tape(pos: Int, tape: List(Int))
}

fn get(tape: Tape) {
  tape.tape |> list.at(tape.pos)
}

fn inc(tape: Tape, x: Int) {
  try y = tape.tape |> at(tape.pos) 
  add(y, x) |> Ok()
}