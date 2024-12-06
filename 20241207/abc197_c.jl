using Printf
using IterTools

function main()
    n = parseint()
    an = parseints()

    result = 0

    for pattern ∈ IterTools.subsets(1:n-1)

        @show pattern
        arr = []

        if isempty(pattern)
            push!(arr, an)
        else
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
