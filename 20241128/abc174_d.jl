using Printf

function main()
    n = parseint()
    s = parsestring()

    count_red = count('R', s)
    result = count('W', s[begin:count_red])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
