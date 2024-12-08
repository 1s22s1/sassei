using Printf
using IterTools

function main()
    h, w, d = parseints()
    maze = [split(parsestring(), "") for _ ∈ 1:h]

    starts = []
    for i ∈ 1:h, j ∈ 1:w
        if maze[i][j] == "H"
            push!(starts, [i, j])
        end
    end

    seen = maze_bfs(maze, starts)
    result = count(x -> x ≤ d && x ≠ -1, seen)

    println(result)
end

"""
    maze_bfs(maze::Vector{Vector{String}}, start::Vector{})::Matrix{}

startを始点として幅優先探索を行う。AtCoder向け。
"""
function maze_bfs(maze::Vector{Vector{String}}, starts::Vector{})::Matrix{}
    h = length(maze)
    w = length(maze[begin])
    seen = fill(-1, h, w)

    nexts = deepcopy(starts)
    for start ∈ starts
        seen[start[begin], start[end]] = 0
    end

    while !isempty(nexts)
        cur_pos = popfirst!(nexts)

        for (x, y) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
            next_x = cur_pos[begin] + x
            next_y = cur_pos[end] + y

            if 1 ≤ next_x ≤ h &&
               1 ≤ next_y ≤ w &&
               maze[next_x][next_y] == "." &&
               seen[next_x, next_y] == -1
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
