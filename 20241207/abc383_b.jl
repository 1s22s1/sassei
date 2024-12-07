using Printf
using IterTools
using Combinatorics

function main()
    h, w, d = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    result = -1

    positions = []
    for i ∈ 1:h, j ∈ 1:w
        if s[i][j] == "."
            push!(positions, [i, j])
        end
    end

    for combo in combinations(positions, 2)
        target = []

        for i ∈ -d:d, j ∈ -d:d
            if 1 ≤ combo[begin][begin]+i ≤ h && 1 ≤ combo[begin][end]+j ≤ w && s[combo[begin][begin]+i][combo[begin][end]+j] == "." && abs(i) + abs(j) ≤ d
                push!(target, [combo[begin][begin]+i, combo[begin][end]+j])
            end

            if 1 ≤ combo[end][begin]+i ≤ h && 1 ≤ combo[end][end]+j ≤ w && s[combo[end][begin]+i][combo[end][end]+j] == "." && abs(i) + abs(j) ≤ d
                push!(target, [combo[end][begin]+i, combo[end][end]+j])
            end
        end

        result = max(result, target |> unique |> length)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
