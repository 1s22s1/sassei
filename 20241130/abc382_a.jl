using Printf

function main()
    n, d = parseints()
    s = parsestring()

    result = count('.', s) + d

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
