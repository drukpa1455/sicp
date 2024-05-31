# Recursive process
function f_recursive(n::Int)
    if n < 3
        return n  # base case: if n < 3, return n
    else
        return f_recursive(n - 1) +  # recursive case: if n >= 3, compute f(n-1)
               2 * f_recursive(n - 2) +  # compute 2 * f(n-2)
               3 * f_recursive(n - 3)  # compute 3 * f(n-3) and sum the results
    end
end

# Iterative process
function f_iterative(n::Int)
    if n < 3
        return n  # base case: if n < 3, return n
    else
        a, b, c = 2, 1, 0  # initialize variables a, b, c
        for i in 1:(n-2)  # iterate n-2 times
            a, b, c = a + 2 * b + 3 * c, a, b  # update a, b, c in a single line
        end
        return a  # return the final value of a
    end
end