using Printf
using IterTools

function main()
    n, m = parseints()

    g = [Int[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    dict = bfs(g, [1])

    if 2:n == dict |> keys |> collect |> sort
        println("Yes")

        for elem ∈ dict |> collect |> sort
            println(elem[end])
        end

    else
        println("No")
    end
end

"""
    bfs(graph::Vector{Vector{Int64}}, starts::Vector{Int64})::Vector{Int64}

startを始点として幅優先探索を行う。隣接リスト形式向け。
"""
function bfs(graph::Vector{Vector{Int64}}, starts::Vector{Int64})
    seen = fill(-1, length(graph))
    dict = Dict()

    nexts = deepcopy(starts)
    for start ∈ starts
        seen[start] = 0
    end

    while !isempty(nexts)
        target_vertex = popfirst!(nexts)

        for vertex ∈ graph[target_vertex]
            if seen[vertex] ≠ -1
                continue
            end

            push!(nexts, vertex)
            dict[vertex] = target_vertex
            seen[vertex] = seen[target_vertex] + 1
        end
    end

    return dict
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
