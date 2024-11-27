using Printf

function main()
    n = parseint()
    s = parsestring()

    red_count = count('R', s)
    result = red_count - count('R', s[begin:red_count])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
