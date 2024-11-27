using Printf
using Primes

function main()
    n = parseint()
    an = parseints()

    result = 0
    for a ∈ an
        result += factor(a)[2]
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
