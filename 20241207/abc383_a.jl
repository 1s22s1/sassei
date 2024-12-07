using Printf
using IterTools

function main()
    n = parseint()
    tvn = [parseints() for _ ∈ 1:n]

    cur_liter = tvn[begin][end]

    for i ∈ 2:n
        cur_liter = max(0, cur_liter - (tvn[i][begin] - tvn[i-1][begin]))
        cur_liter += tvn[i][end]
    end

    println(cur_liter)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
