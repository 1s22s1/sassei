using Combinatorics

function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    result = 0

    for paths in permutations(1:n)
        satisfy = true

        for i ∈ 1:n-1
            if paths[i+1] ∉ g[paths[i]]
                satisfy = false
            end
        end

        if satisfy && paths[begin] == 1
            result += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
