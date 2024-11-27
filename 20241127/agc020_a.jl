using Printf

function main()
    n, a, b = parseints()

    if iseven(abs(a - b))
        println("Alice")
    else
        println("Borys")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
