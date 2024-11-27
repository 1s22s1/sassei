using Printf

function main()
    n = parseint()
    s = parsestring()

    white_count = count('W', s)

    if n == white_count
        result = 0
    else
        result = count('W', s[begin:white_count])
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
