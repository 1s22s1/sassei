using Printf

function main()
    a, b, c, k = parseints()

    if 0 < k ≤ a
        println(k)
    elseif a < k ≤ a + b
        println(a)
    else
        println(a - (k - a - b))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
