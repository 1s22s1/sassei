using Printf
using IterTools

function main()
    h, w, d = parseints()
    maze = [split(parsestring(), "") for _ ∈ 1:h]

    result = []

    for i ∈ 1:h, j ∈ 1:w
        if maze[i][j] == "H"
            push!(result, bfs(maze, h, w, [i, j], d))
        end
    end

    result = collect(Iterators.flatten(result)) |> unique |> length
    println(result)
end

function bfs(maze, h, w, start, d)
    return_arr = [start]

    seen = [collect(row) for row in eachrow(fill(-1, h, w))]

    nexts = [start]
    seen[start[begin]][start[end]] = 0

    while !isempty(nexts)
        target_positon = popfirst!(nexts)

        for (x, y) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
            next_x = target_positon[begin] + x
            next_y = target_positon[end] + y

            if 1 ≤ next_x ≤ h && 1 ≤ next_y ≤ w && maze[next_x][next_y] ∈ [".", "H"] && seen[next_x][next_y] == -1
                push!(nexts, [next_x, next_y])

                if maze[next_x][next_y] == "."
                    if seen[target_positon[begin]][target_positon[end]] + 1 ≤ d
                        push!(return_arr, [next_x, next_y])
                    end

                    seen[next_x][next_y] = seen[target_positon[begin]][target_positon[end]] + 1
                elseif maze[next_x][next_y] == "#"
                    seen[next_x][next_y] = typemax(Int)
                end
            end
        end
    end

    return return_arr
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
