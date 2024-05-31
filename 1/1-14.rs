fn first_denomination(kinds_of_coins: i32) -> i32 {
    // Return the value of the first coin denomination based on the number of coin types
    match kinds_of_coins {
        1 => 1,
        2 => 5,
        3 => 10,
        4 => 25,
        5 => 50,
        _ => 0,
    }
}

fn cc(amount: i32, kinds_of_coins: i32) -> i32 {
    // Base case: If the amount is 0, there is only one way to make change (no coins)
    if amount == 0 {
        return 1;
    }
    // If the amount is less than 0 or there are no more coin types, return 0
    if amount < 0 || kinds_of_coins == 0 {
        return 0;
    }
    // Recursive case: Combine the number of ways to make change without using the current coin type
    // and the number of ways to make change using the current coin type
    cc(amount, kinds_of_coins - 1) + cc(amount - first_denomination(kinds_of_coins), kinds_of_coins)
}

fn count_change(amount: i32) -> i32 {
    // Call the cc function with the given amount and 5 kinds of coins
    cc(amount, 5)
}

fn main() {
    let amount = 11;
    let ways = count_change(amount);
    println!("Number of ways to make change for {} cents: {}", amount, ways);
}