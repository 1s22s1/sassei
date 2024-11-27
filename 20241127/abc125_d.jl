using Printf

function main()
    n = parseint()
    an = parseints()

    result = sum(abs, an)

    if isodd(count(<(0), an))
        result -= 2(map(x -> abs(x), an) |> minimum)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
