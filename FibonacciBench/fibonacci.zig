// zig build-exe -O ReleaseFast zig.zig
const expect = @import("std").testing.expect;
const std = @import("std");
const print = std.debug.print;

fn fibonacci(index: u32) u32 {
    if (index < 2) return index;
    return fibonacci(index - 1) + fibonacci(index - 2);
}

pub fn main() !void {
    const x = fibonacci(40);
    print("result = {}\n", .{x});

}