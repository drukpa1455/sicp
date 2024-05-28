fn p() -> i32 {
    p()  // Infinite recursion
}

fn test(x: i32, y: i32) -> i32 {
    if x == 0 {
        0
    } else {
        y
    }
}

fn main() {
    // Uncommenting this will cause an infinite loop or stack overflow
    // println!("{}", test(0, p()));
}
