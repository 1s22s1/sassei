using Printf

function main()
    a, b, c, x, y = parseints()

    result = typemax(Int)

    for i ∈ 0:2:max(2x, 2y)
        j = max(0, x - i ÷ 2)
        k = max(0, y - i ÷ 2)

        result = min(result, a * j + b * k + c * i)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
