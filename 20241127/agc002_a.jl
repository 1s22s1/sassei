using Printf

function main()
    a, b = parseints()

    if a ≤ 0 ≤ b
        println("Zero")
    elseif b < 0
        if iseven(b - a)
            println("Negative")
        else
            println("Positive")
        end
    elseif a < 0
        if iseven(a)
            println("Positive")
        else
            println("Negative")
        end
    else
        println("Positive")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
