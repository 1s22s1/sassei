using Printf

function main()
    n, k = parseints()
    an = parseints()
    bn = parseints()

    diff = map(x -> abs(x), an - bn) |> sum

    if diff > k
        println("No")

        return
    end

    if k % 2 == diff % 2
        println("Yes")
    else
        println("No")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
