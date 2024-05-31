function firstDenomination(kindsOfCoins: number): number {
    // Return the value of the first coin denomination based on the number of coin types
    if (kindsOfCoins === 1) return 1;
    if (kindsOfCoins === 2) return 5;
    if (kindsOfCoins === 3) return 10;
    if (kindsOfCoins === 4) return 25;
    if (kindsOfCoins === 5) return 50;
    return 0;
}

function cc(amount: number, kindsOfCoins: number): number {
    // Base case: If the amount is 0, there is only one way to make change (no coins)
    if (amount === 0) return 1;
    // If the amount is less than 0 or there are no more coin types, return 0
    if (amount < 0 || kindsOfCoins === 0) return 0;
    // Recursive case: Combine the number of ways to make change without using the current coin type
    // and the number of ways to make change using the current coin type
    return cc(amount, kindsOfCoins - 1) + cc(amount - firstDenomination(kindsOfCoins), kindsOfCoins);
}

function countChange(amount: number): number {
    // Call the cc function with the given amount and 5 kinds of coins
    return cc(amount, 5);
}

const amount = 11;
const ways = countChange(amount);
console.log(`Number of ways to make change for ${amount} cents: ${ways}`);