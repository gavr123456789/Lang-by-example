// zig build-exe -O ReleaseFast fibonacci.zig
const expect = @import("std").testing.expect;
const std = @import("std");
const print = std.debug.print;

fn fibonacci(index: i64) i64 {
    if (index <= 1) return index;
    return fibonacci(index - 1) + fibonacci(index - 2);
}

pub fn main() !void {
    const x = fibonacci(40);
    print("result = {}\n", .{x});

}