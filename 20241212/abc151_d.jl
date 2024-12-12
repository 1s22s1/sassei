using Printf
using IterTools

function main()
    h, w = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    result = -1

    for i ∈ 1:h, j ∈ 1:w
        if s[i][j] == "."
            seen = maze_bfs(s, [[i, j]])

            result = max(result, maximum(seen))
        end
    end

    println(result)
end

"""
    maze_bfs(maze::Vector{Vector{SubString{String}}}, starts::Vector{Vector{Int64}})::Matrix{Int64}

startsを始点として幅優先探索を行う。AtCoder向け。
"""
function maze_bfs(maze::Vector{Vector{SubString{String}}}, starts::Vector{Vector{Int64}})::Matrix{Int64}
    h = length(maze)
    w = length(maze[begin])
    seen = fill(-1, h, w)

    nexts = starts
    for start ∈ starts
        seen[start[begin], start[end]] = 0
    end

    while !isempty(nexts)
        cur_pos = popfirst!(nexts)

        for (x, y) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
            next_x = cur_pos[begin] + x
            next_y = cur_pos[end] + y

            if next_x ∈ 1:h && next_y ∈ 1:w && maze[next_x][next_y] == "." && seen[next_x, next_y] == -1
                push!(nexts, [next_x, next_y])

                seen[next_x, next_y] = seen[cur_pos[begin], cur_pos[end]] + 1
            end
        end
    end

    return seen
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
