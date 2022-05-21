const print = @import("std").debug.print;

pub fn main() void {
  const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
  const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' }; 
  const array = [_]u8{ 'h', 'e', 'l', 'l', 'o' };
  const length = array.len; // 5
}