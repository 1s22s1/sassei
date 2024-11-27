using Printf

function main()
    s = parsestring()

    white_count = count('W', s)
    black_indexes = filter(x -> x ≤ white_count, findall('B', s))
    white_indexes = filter(x -> x > white_count, findall('W', s))

    result = sum(white_indexes - black_indexes)

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
