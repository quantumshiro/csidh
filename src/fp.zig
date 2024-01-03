const std = @import("std");
const expect = std.testing.expect;
const constants = @import("params.zig");

pub const Fp = [constants.numWords]u64;

// if pick == 0 (out = in2)
// else out is undefined.
pub fn ctPick64(which: bool, in1: u64, in2: u64) u64 {
    if (which) {
        return in1;
    } else {
        return in2;
    }
}

// ctIsNonZero64 returns 0 in case i == 0, otherwise it returns 1.
pub fn ctIsNonZero64(i: u64) bool {
    if (i == 0) {
        return false;
    } else {
        return true;
    }
}
