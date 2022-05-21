const print = @import("std").debug.print;

pub fn main() void {
  var a: i32 = 5;
  a = 3;
  var b: i32 = undefined;
  b = 3;
  
  const c = @as(i32, 5);
  var d = @as(u32, 5000);
}