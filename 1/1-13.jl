# φ (phi) is the golden ratio, approximately 1.618. It is used because of its relation to the Fibonacci sequence.
const phi = (1 + sqrt(5)) / 2

# ψ (psi) is the negative reciprocal of φ, approximately -0.618. It is used in the proof to simplify the expression.
const psi = (1 - sqrt(5)) / 2

# Define the Fibonacci function using the formula Fib(n) = (φ^n - ψ^n) / √5
function fib(n::Integer)
    return (phi^n - psi^n) / sqrt(5)
end

println("Fib(10) = ", fib(10))