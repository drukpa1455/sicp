function fast_expt_iter(b, n, a)
    # Iterative exponentiation using successive squaring
    if n == 0
        return a
    elseif iseven(n)
        return fast_expt_iter(b * b, n ÷ 2, a)
    else
        return fast_expt_iter(b, n - 1, a * b)
    end
end

function fast_expt(b, n)
    # Compute b^n using logarithmic number of steps
    return fast_expt_iter(b, n, 1.0)
end

function main()
    base = 2.0
    exponent = 10
    result = fast_expt(base, exponent)
    println("$base^$exponent = $result")
end

main()