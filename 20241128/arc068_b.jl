using Printf

function main()
    n = parseint()
    an = parseints()

    kind_count = an |> unique!|> length

    if iseven(kind_count)
        println(kind_count - 1)
    else
        println(kind_count)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
