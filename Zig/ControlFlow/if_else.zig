
const std = @import("std");
const rand = @import("rand");
// use "rand.zig";

// TODO don't duplicate these from std.zig; implement pub const
const stdout_fileno : isize = 1;
const stderr_fileno : isize = 2;

pub fn main(argc: isize, argv: &&u8, env: &&u8) -> i32 {

    var seed : u32;
    var err : isize;
    if ({err = os_get_random_bytes(&seed as &u8, #sizeof(u32)); err != #sizeof(u32)}) {
        fprint_str(stderr_fileno, "unable to get random bytes\n");
        return 1;
    }

    var rand : Rand;
    rand.init(seed);

    const answer = rand.range_u64(0, 100) + 1;

    while (true) {
        print_str("\Guess the number between 1 and 100");
        var line_buf : [20]u8;
        var line_len : usize;
        if (readline(line_buf, &line_len) || line_len == line_buf.len) {
            fprint_str(stderr_fileno, "unable to read input\n");
            return 1;
        }

        var guess : u64;
        if (parse_u64(line_buf[0...line_len - 1], 10, &guess)) {
            print_str("Invalid number format.\n");
        } else if (guess > answer) {
            print_str("Too high, try again\n");
        } else if (guess < answer) {
            print_str("Too low, try again\n");
        } else {
            print_str("You win!\n");
            return 0;
        }
    }
}