# Define the cube function
cube(x) = x * x * x

# Define the p function
p(x) = 3x - 4cube(x)

# Define the sine function
function sine(angle)
    if abs(angle) <= 0.1
        return angle
    else
        return p(sine(angle / 3.0))
    end
end

# Evaluate sine(12.15)
result = sine(12.15)