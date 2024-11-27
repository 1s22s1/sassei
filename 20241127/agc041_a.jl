using Printf

function main()
    n, a, b = parseints()

    result = 0
    diff = b - a

    if iseven(diff)
        result = diff ÷ 2
    else
        # Sentou
        if a - 1 < n - b
            result = a + diff ÷ 2

            # Matsubi
        else
            result = (n - b) + 1 + diff ÷ 2
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
