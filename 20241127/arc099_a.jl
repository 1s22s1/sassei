using Printf

function main()
    n, k = parseints()
    an = parseints()

    if n ≤ k
        println(1)

        return
    end

    println(ceil((n - k) / (k - 1)) + 1 |> Int)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
