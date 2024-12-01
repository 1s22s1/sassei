using Printf

function main()
    q, h, s, d = parseints()
    n = parseint()

    one_liter_price = min(4q, 2h, s)

    result = typemax(Int)

    for i ∈ 0:n÷2
        one_liter_volume = n - 2i

        result = min(result, one_liter_price * one_liter_volume + i * d)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
