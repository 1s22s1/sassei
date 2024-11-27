using Printf

function main()
    a, b = parseints()
    count = b - a + 1

    if iseven(a)
        if iseven(count)
            if iseven(count % 2)
                println(0)
            else
                println(1)
            end
        else
            if iseven(count % 2)
                println(0 ⊻ b)
            else
                println(1 ⊻ b)
            end
        end
    else
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
