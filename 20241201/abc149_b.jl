using Printf

function main()
    a, b, k = parseints()

    a -= k

    if a ≥ 0
        println("$(a) $(b)")
    else

        println("$(0) $(max(a+b, 0))")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
