using Printf

function main()
    n = parseint()
    an = parseints()

    println(sum(an) - n)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
