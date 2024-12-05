using Plots

grid = nothing
height = nothing
width = nothing

function main()
    global height, width = parseints()
    global grid = reduce(hcat, [parseints() for _ ∈ 1:height])

    animation = @animate for i = 1:3
       heatmap(grid, colorbar=false, ticks=false, axis=false)

       next()
    end

    gif(animation, "life_game.gif", fps = 10)
end

function next()
    next_grid = zeros(Int, height, width)

    for i ∈ 1:height, j ∈ 1:width
        count = 0

        for x ∈ [1, 0, -1]
            for y ∈ [1, 0, -1]
                if 1 ≤ i+x ≤ height && 1 ≤ j+y ≤ width && grid[i+x, j+y] == 1
                    count += 1
                end
            end
        end

        count -= 1

        if grid[i, j] == 1 && count ∈ [2, 3]
            next_grid[i, j] = 1
        elseif grid[i, j] == 0 && count == 3
            next_grid[i, j] = 1
        end
    end

    global grid = deepcopy(next_grid)
end

parseints() = readline() |> split |> x -> parse.(Int, x)

main()
