using Primes

result = []

for i ∈ 1:4*10^12
    if divisors(i) |> length == 9
        push!(result, i)
    end
end

@show result
