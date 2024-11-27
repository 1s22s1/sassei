using Printf

function main()
    n = parseint()

    t, x, y = 0, 0, 0
    result = "Yes"

    for _ ∈ 1:n
        next_t, next_x, next_y = parseints()

        t, x, y = next_t - t, abs(x - next_x), abs(y - next_y)

        if x + y > t
            result = "No"
        end

        if t % 2 ≠ (x + y) % 2
            result = "No"
        end

        t, x, y = next_t, next_x, next_y
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
