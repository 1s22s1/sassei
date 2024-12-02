using Printf

function main()
    k, a, b = parseints()

    if b - a ≤ 2
        println(k + 1)
    else
        if k < a + 1
            println(k + 1)

            return
        end

        k = k - a + 1

        if iseven(k)
            println(a + (b - a) * (k ÷ 2))
        else
            println(a + (b - a) * (k ÷ 2) + 1)
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
