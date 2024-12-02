using Printf
using IterTools

function main()
    n, m, x = parseints()
    can = [parseints() for _ ∈ 1:n]

    result = typemax(Int)

    for pattern ∈ IterTools.subsets(1:n)
        if !isempty(pattern)
            arr = sum(can[pattern])

            if all(understand -> understand ≥ x, arr[begin+1:end])
                result = min(result, arr[begin])
            end
        end
    end

    if result == typemax(Int)
        println(-1)
    else
        println(result)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
