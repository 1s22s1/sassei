using Printf

function main()
    a, b = parseints()

    if a ≤ 8 && b ≤ 8
        println("Yay!")
    else
        println(":(")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
