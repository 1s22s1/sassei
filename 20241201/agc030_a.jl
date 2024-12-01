using Printf

function main()
    a, b, c = parseints()

    if a + b + 1 ≥ c
        println(b + c)
    else
        println(b + (a + b + 1))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
