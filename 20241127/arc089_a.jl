using Printf

function main()
    n = parseint()

    t = 0
    x = 0
    y = 0

    for _ ∈ 1:n
        next_t, next_x, next_y = parseints()

        t = next_t - t
        x = abs(next_x - x)
        y = abs(next_y - y)

        if t < x + y
            println("No")

            return
        end

        if t % 2 ≠ (x + y) % 2
            println("No")

            return
        end

        t = next_t
        x = next_x
        y = next_y
    end

    println("Yes")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
